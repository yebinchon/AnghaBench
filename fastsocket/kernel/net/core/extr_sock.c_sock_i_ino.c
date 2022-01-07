
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; scalar_t__ sk_socket; } ;
struct TYPE_2__ {unsigned long i_ino; } ;


 TYPE_1__* SOCK_INODE (scalar_t__) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

unsigned long sock_i_ino(struct sock *sk)
{
 unsigned long ino;

 read_lock_bh(&sk->sk_callback_lock);
 ino = sk->sk_socket ? SOCK_INODE(sk->sk_socket)->i_ino : 0;
 read_unlock_bh(&sk->sk_callback_lock);
 return ino;
}
