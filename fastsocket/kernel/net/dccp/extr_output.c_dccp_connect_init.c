
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_err; } ;
struct inet_connection_sock {scalar_t__ icsk_retransmits; } ;
struct dst_entry {int dummy; } ;
struct dccp_sock {int dccps_iss; int dccps_gar; } ;


 int SOCK_DONE ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_sync_mss (struct sock*,int ) ;
 int dst_mtu (struct dst_entry*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static inline void dccp_connect_init(struct sock *sk)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct dst_entry *dst = __sk_dst_get(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);

 sk->sk_err = 0;
 sock_reset_flag(sk, SOCK_DONE);

 dccp_sync_mss(sk, dst_mtu(dst));


 dp->dccps_gar = dp->dccps_iss;

 icsk->icsk_retransmits = 0;
}
