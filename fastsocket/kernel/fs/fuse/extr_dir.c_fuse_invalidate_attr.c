
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_time; } ;


 TYPE_1__* get_fuse_inode (struct inode*) ;

void fuse_invalidate_attr(struct inode *inode)
{
 get_fuse_inode(inode)->i_time = 0;
}
