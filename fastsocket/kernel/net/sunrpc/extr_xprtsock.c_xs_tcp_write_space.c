
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; } ;


 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ sk_stream_min_wspace (struct sock*) ;
 scalar_t__ sk_stream_wspace (struct sock*) ;
 int xs_write_space (struct sock*) ;

__attribute__((used)) static void xs_tcp_write_space(struct sock *sk)
{
 read_lock_bh(&sk->sk_callback_lock);


 if (sk_stream_wspace(sk) >= sk_stream_min_wspace(sk))
  xs_write_space(sk);

 read_unlock_bh(&sk->sk_callback_lock);
}
