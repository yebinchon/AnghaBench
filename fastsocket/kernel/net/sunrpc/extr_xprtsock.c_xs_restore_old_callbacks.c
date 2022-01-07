
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int old_write_space; int old_state_change; int old_data_ready; } ;
struct sock {int sk_write_space; int sk_state_change; int sk_data_ready; } ;



__attribute__((used)) static void xs_restore_old_callbacks(struct sock_xprt *transport, struct sock *sk)
{
 sk->sk_data_ready = transport->old_data_ready;
 sk->sk_state_change = transport->old_state_change;
 sk->sk_write_space = transport->old_write_space;
}
