
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_prot; } ;
struct ipv6_pinfo {int ipv6only; int rcv_saddr; int daddr; } ;
struct inet_timewait_sock {scalar_t__ tw_family; void* tw_timeout; int tw_ipv6only; int tw_ipv6_offset; } ;
struct inet_connection_sock {int icsk_rto; } ;
struct inet6_timewait_sock {int tw_v6_rcv_saddr; int tw_v6_daddr; } ;
struct TYPE_3__ {scalar_t__ tw_count; scalar_t__ sysctl_max_tw_buckets; } ;


 void* DCCP_TIMEWAIT_LEN ;
 int DCCP_TIME_WAIT ;
 int DCCP_WARN (char*) ;
 scalar_t__ PF_INET6 ;
 int __inet_twsk_hashdance (struct inet_timewait_sock*,struct sock*,int *) ;
 TYPE_1__ dccp_death_row ;
 int dccp_done (struct sock*) ;
 int dccp_hashinfo ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int inet6_tw_offset (int ) ;
 struct inet6_timewait_sock* inet6_twsk (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct inet_timewait_sock* inet_twsk_alloc (struct sock*,int) ;
 int inet_twsk_put (struct inet_timewait_sock*) ;
 int inet_twsk_schedule (struct inet_timewait_sock*,TYPE_1__*,int,void*) ;
 int ipv6_addr_copy (int *,int *) ;

void dccp_time_wait(struct sock *sk, int state, int timeo)
{
 struct inet_timewait_sock *tw = ((void*)0);

 if (dccp_death_row.tw_count < dccp_death_row.sysctl_max_tw_buckets)
  tw = inet_twsk_alloc(sk, state);

 if (tw != ((void*)0)) {
  const struct inet_connection_sock *icsk = inet_csk(sk);
  const int rto = (icsk->icsk_rto << 2) - (icsk->icsk_rto >> 1);
  __inet_twsk_hashdance(tw, sk, &dccp_hashinfo);


  if (timeo < rto)
   timeo = rto;

  tw->tw_timeout = DCCP_TIMEWAIT_LEN;
  if (state == DCCP_TIME_WAIT)
   timeo = DCCP_TIMEWAIT_LEN;

  inet_twsk_schedule(tw, &dccp_death_row, timeo,
       DCCP_TIMEWAIT_LEN);
  inet_twsk_put(tw);
 } else {




  DCCP_WARN("time wait bucket table overflow\n");
 }

 dccp_done(sk);
}
