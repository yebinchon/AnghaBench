
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; TYPE_1__* i_op; } ;
struct TYPE_2__ {int follow_link; } ;


 unsigned int LOOKUP_FOLLOW ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int follow_on_final(struct inode *inode, unsigned lookup_flags)
{
 return inode && unlikely(inode->i_op->follow_link) &&
  ((lookup_flags & LOOKUP_FOLLOW) || S_ISDIR(inode->i_mode));
}
