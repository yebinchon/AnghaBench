
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct inet_timewait_sock {int dummy; } ;


 scalar_t__ TCP_TIME_WAIT ;
 int inet_csk_diag_fill (struct sock*,struct sk_buff*,int,int ,int ,int ,struct nlmsghdr const*) ;
 int inet_twsk_diag_fill (struct inet_timewait_sock*,struct sk_buff*,int,int ,int ,int ,struct nlmsghdr const*) ;

__attribute__((used)) static int sk_diag_fill(struct sock *sk, struct sk_buff *skb,
   int ext, u32 pid, u32 seq, u16 nlmsg_flags,
   const struct nlmsghdr *unlh)
{
 if (sk->sk_state == TCP_TIME_WAIT)
  return inet_twsk_diag_fill((struct inet_timewait_sock *)sk,
        skb, ext, pid, seq, nlmsg_flags,
        unlh);
 return inet_csk_diag_fill(sk, skb, ext, pid, seq, nlmsg_flags, unlh);
}
