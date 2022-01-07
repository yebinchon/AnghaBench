
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_ack_backlog; } ;
struct iucv_sock {struct sock* parent; int accept_q_lock; int accept_q; } ;


 struct iucv_sock* iucv_sk (struct sock*) ;
 int list_add_tail (int *,int *) ;
 int sock_hold (struct sock*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void iucv_accept_enqueue(struct sock *parent, struct sock *sk)
{
 unsigned long flags;
 struct iucv_sock *par = iucv_sk(parent);

 sock_hold(sk);
 spin_lock_irqsave(&par->accept_q_lock, flags);
 list_add_tail(&iucv_sk(sk)->accept_q, &par->accept_q);
 spin_unlock_irqrestore(&par->accept_q_lock, flags);
 iucv_sk(sk)->parent = parent;
 parent->sk_ack_backlog++;
}
