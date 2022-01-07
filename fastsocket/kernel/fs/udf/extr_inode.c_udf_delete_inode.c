
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; int i_data; } ;


 int IS_SYNC (struct inode*) ;
 int clear_inode (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int lock_kernel () ;
 int truncate_inode_pages (int *,int ) ;
 int udf_free_inode (struct inode*) ;
 int udf_truncate (struct inode*) ;
 int udf_update_inode (struct inode*,int ) ;
 int unlock_kernel () ;

void udf_delete_inode(struct inode *inode)
{
 truncate_inode_pages(&inode->i_data, 0);

 if (is_bad_inode(inode))
  goto no_delete;

 inode->i_size = 0;
 udf_truncate(inode);
 lock_kernel();

 udf_update_inode(inode, IS_SYNC(inode));
 udf_free_inode(inode);

 unlock_kernel();
 return;

no_delete:
 clear_inode(inode);
}
