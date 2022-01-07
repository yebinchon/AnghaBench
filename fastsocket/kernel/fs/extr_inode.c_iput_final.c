
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_operations {void (* drop_inode ) (struct inode*) ;} ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct super_operations* s_op; } ;


 void generic_drop_inode (struct inode*) ;

__attribute__((used)) static inline void iput_final(struct inode *inode)
{
 const struct super_operations *op = inode->i_sb->s_op;
 void (*drop)(struct inode *) = generic_drop_inode;

 if (op && op->drop_inode)
  drop = op->drop_inode;
 drop(inode);
}
