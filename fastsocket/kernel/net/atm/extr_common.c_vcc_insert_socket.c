
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __vcc_insert_socket (struct sock*) ;
 int vcc_sklist_lock ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

void vcc_insert_socket(struct sock *sk)
{
 write_lock_irq(&vcc_sklist_lock);
 __vcc_insert_socket(sk);
 write_unlock_irq(&vcc_sklist_lock);
}
