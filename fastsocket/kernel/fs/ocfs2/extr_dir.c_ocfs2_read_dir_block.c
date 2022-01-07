
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int EIO ;
 int OCFS2_BH_READAHEAD ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_check_dir_trailer (struct inode*,struct buffer_head*) ;
 int ocfs2_read_virt_blocks (struct inode*,int ,int,struct buffer_head**,int,int ) ;
 scalar_t__ ocfs2_supports_dir_trailer (struct inode*) ;
 int ocfs2_validate_dir_block ;

__attribute__((used)) static int ocfs2_read_dir_block(struct inode *inode, u64 v_block,
    struct buffer_head **bh, int flags)
{
 int rc = 0;
 struct buffer_head *tmp = *bh;

 rc = ocfs2_read_virt_blocks(inode, v_block, 1, &tmp, flags,
        ocfs2_validate_dir_block);
 if (rc) {
  mlog_errno(rc);
  goto out;
 }

 if (!(flags & OCFS2_BH_READAHEAD) &&
     ocfs2_supports_dir_trailer(inode)) {
  rc = ocfs2_check_dir_trailer(inode, tmp);
  if (rc) {
   if (!*bh)
    brelse(tmp);
   mlog_errno(rc);
   goto out;
  }
 }


 if (!*bh)
  *bh = tmp;

out:
 return rc ? -EIO : 0;
}
