
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sk_del_node_init (struct sock*) ;
 int vcc_sklist_lock ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void vcc_remove_socket(struct sock *sk)
{
 write_lock_irq(&vcc_sklist_lock);
 sk_del_node_init(sk);
 write_unlock_irq(&vcc_sklist_lock);
}
