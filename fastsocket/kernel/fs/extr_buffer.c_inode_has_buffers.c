
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int private_list; } ;
struct inode {TYPE_1__ i_data; } ;


 int list_empty (int *) ;

int inode_has_buffers(struct inode *inode)
{
 return !list_empty(&inode->i_data.private_list);
}
