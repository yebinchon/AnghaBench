
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nrpages; } ;
struct inode {TYPE_1__ i_data; } ;


 int clear_inode (struct inode*) ;
 int destroy_inode (struct inode*) ;
 int generic_detach_inode (struct inode*) ;
 int truncate_inode_pages (TYPE_1__*,int ) ;
 int wake_up_inode (struct inode*) ;

__attribute__((used)) static void generic_forget_inode(struct inode *inode)
{
 if (!generic_detach_inode(inode))
  return;
 if (inode->i_data.nrpages)
  truncate_inode_pages(&inode->i_data, 0);
 clear_inode(inode);
 wake_up_inode(inode);
 destroy_inode(inode);
}
