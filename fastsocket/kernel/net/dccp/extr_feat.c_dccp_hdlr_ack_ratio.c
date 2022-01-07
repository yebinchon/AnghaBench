
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct sock {int dummy; } ;
struct TYPE_2__ {void* dccps_l_ack_ratio; void* dccps_r_ack_ratio; } ;


 TYPE_1__* dccp_sk (struct sock*) ;

__attribute__((used)) static int dccp_hdlr_ack_ratio(struct sock *sk, u64 ratio, bool rx)
{
 if (rx)
  dccp_sk(sk)->dccps_r_ack_ratio = ratio;
 else
  dccp_sk(sk)->dccps_l_ack_ratio = ratio;
 return 0;
}
