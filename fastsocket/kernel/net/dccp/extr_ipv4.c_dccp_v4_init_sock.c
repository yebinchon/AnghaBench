
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int * icsk_af_ops; } ;


 int dccp_init_sock (struct sock*,int) ;
 int dccp_ipv4_af_ops ;
 TYPE_1__* inet_csk (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dccp_v4_init_sock(struct sock *sk)
{
 static __u8 dccp_v4_ctl_sock_initialized;
 int err = dccp_init_sock(sk, dccp_v4_ctl_sock_initialized);

 if (err == 0) {
  if (unlikely(!dccp_v4_ctl_sock_initialized))
   dccp_v4_ctl_sock_initialized = 1;
  inet_csk(sk)->icsk_af_ops = &dccp_ipv4_af_ops;
 }

 return err;
}
