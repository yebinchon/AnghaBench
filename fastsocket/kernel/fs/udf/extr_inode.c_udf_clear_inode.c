
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * i_data; } ;
struct udf_inode_info {TYPE_2__ i_ext; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_3__ {int s_flags; } ;


 int MS_RDONLY ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int invalidate_inode_buffers (struct inode*) ;
 int kfree (int *) ;
 int lock_kernel () ;
 int udf_truncate_tail_extent (struct inode*) ;
 int unlock_kernel () ;
 int write_inode_now (struct inode*,int ) ;

void udf_clear_inode(struct inode *inode)
{
 struct udf_inode_info *iinfo;
 if (!(inode->i_sb->s_flags & MS_RDONLY)) {
  lock_kernel();
  udf_truncate_tail_extent(inode);
  unlock_kernel();
  write_inode_now(inode, 0);
  invalidate_inode_buffers(inode);
 }
 iinfo = UDF_I(inode);
 kfree(iinfo->i_ext.i_data);
 iinfo->i_ext.i_data = ((void*)0);
}
