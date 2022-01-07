
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int INODE_CACHE (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_check_dir_trailer (struct inode*,struct buffer_head*) ;
 int ocfs2_read_block (int ,int ,struct buffer_head**,int ) ;
 scalar_t__ ocfs2_supports_dir_trailer (struct inode*) ;
 int ocfs2_validate_dir_block ;

__attribute__((used)) static int ocfs2_read_dir_block_direct(struct inode *dir, u64 phys,
           struct buffer_head **bh)
{
 int ret;
 struct buffer_head *tmp = *bh;

 ret = ocfs2_read_block(INODE_CACHE(dir), phys, &tmp,
          ocfs2_validate_dir_block);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (ocfs2_supports_dir_trailer(dir)) {
  ret = ocfs2_check_dir_trailer(dir, tmp);
  if (ret) {
   if (!*bh)
    brelse(tmp);
   mlog_errno(ret);
   goto out;
  }
 }

 if (!ret && !*bh)
  *bh = tmp;
out:
 return ret;
}
