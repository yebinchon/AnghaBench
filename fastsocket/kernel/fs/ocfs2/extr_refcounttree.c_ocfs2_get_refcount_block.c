
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_dinode {int i_refcount_loc; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int ip_dyn_features; } ;


 int BUG_ON (int) ;
 int OCFS2_HAS_REFCOUNT_FL ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_get_refcount_block(struct inode *inode, u64 *ref_blkno)
{
 int ret;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_dinode *di;

 ret = ocfs2_read_inode_block(inode, &di_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 BUG_ON(!(OCFS2_I(inode)->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL));

 di = (struct ocfs2_dinode *)di_bh->b_data;
 *ref_blkno = le64_to_cpu(di->i_refcount_loc);
 brelse(di_bh);
out:
 return ret;
}
