
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nrpages; } ;
struct inode {TYPE_1__ i_data; int i_count; scalar_t__ i_state; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ inode_has_buffers (struct inode*) ;

__attribute__((used)) static int can_unuse(struct inode *inode)
{
 if (inode->i_state)
  return 0;
 if (inode_has_buffers(inode))
  return 0;
 if (atomic_read(&inode->i_count))
  return 0;
 if (inode->i_data.nrpages)
  return 0;
 return 1;
}
