
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_state; int i_mutex; TYPE_1__* i_sb; } ;
struct file_system_type {int i_mutex_dir_key; int i_mutex_key; } ;
struct TYPE_2__ {struct file_system_type* s_type; } ;


 int I_LOCK ;
 int I_NEW ;
 int S_IFDIR ;
 int WARN_ON (int) ;
 int lockdep_match_class (int *,int *) ;
 int lockdep_set_class (int *,int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int smp_mb () ;
 int wake_up_inode (struct inode*) ;

void unlock_new_inode(struct inode *inode)
{
 smp_mb();
 WARN_ON((inode->i_state & (I_LOCK|I_NEW)) != (I_LOCK|I_NEW));
 inode->i_state &= ~(I_LOCK|I_NEW);
 wake_up_inode(inode);
}
