
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; } ;


 int __I_LOCK ;
 int smp_mb () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void wake_up_inode(struct inode *inode)
{



 smp_mb();
 wake_up_bit(&inode->i_state, __I_LOCK);
}
