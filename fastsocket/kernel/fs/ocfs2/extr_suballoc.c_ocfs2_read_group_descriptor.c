
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;


 int INODE_CACHE (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int ocfs2_read_block (int ,int ,struct buffer_head**,int ) ;
 int ocfs2_validate_gd_parent (int ,struct ocfs2_dinode*,struct buffer_head*,int ) ;
 int ocfs2_validate_group_descriptor ;

int ocfs2_read_group_descriptor(struct inode *inode, struct ocfs2_dinode *di,
    u64 gd_blkno, struct buffer_head **bh)
{
 int rc;
 struct buffer_head *tmp = *bh;

 rc = ocfs2_read_block(INODE_CACHE(inode), gd_blkno, &tmp,
         ocfs2_validate_group_descriptor);
 if (rc)
  goto out;

 rc = ocfs2_validate_gd_parent(inode->i_sb, di, tmp, 0);
 if (rc) {
  brelse(tmp);
  goto out;
 }


 if (!*bh)
  *bh = tmp;

out:
 return rc;
}
