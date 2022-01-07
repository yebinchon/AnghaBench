
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int tv_sec; int tv_nsec; } ;
struct sk_buff {int len; } ;
struct icmphdr {int dummy; } ;
struct TYPE_6__ {scalar_t__ code; int type; } ;
struct TYPE_4__ {TYPE_3__ icmph; int * times; } ;
struct icmp_bxm {int head_len; scalar_t__ data_len; scalar_t__ offset; struct sk_buff* skb; TYPE_1__ data; } ;
struct TYPE_5__ {int dev; } ;


 int BUG () ;
 int ICMP_INC_STATS_BH (int ,int ) ;
 int ICMP_MIB_INERRORS ;
 int ICMP_TIMESTAMPREPLY ;
 int MSEC_PER_SEC ;
 int NSEC_PER_MSEC ;
 int dev_net (int ) ;
 int getnstimeofday (struct timespec*) ;
 int htonl (int) ;
 TYPE_3__* icmp_hdr (struct sk_buff*) ;
 int icmp_reply (struct icmp_bxm*,struct sk_buff*) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int ,int *,int) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;

__attribute__((used)) static void icmp_timestamp(struct sk_buff *skb)
{
 struct timespec tv;
 struct icmp_bxm icmp_param;



 if (skb->len < 4)
  goto out_err;




 getnstimeofday(&tv);
 icmp_param.data.times[1] = htonl((tv.tv_sec % 86400) * MSEC_PER_SEC +
      tv.tv_nsec / NSEC_PER_MSEC);
 icmp_param.data.times[2] = icmp_param.data.times[1];
 if (skb_copy_bits(skb, 0, &icmp_param.data.times[0], 4))
  BUG();
 icmp_param.data.icmph = *icmp_hdr(skb);
 icmp_param.data.icmph.type = ICMP_TIMESTAMPREPLY;
 icmp_param.data.icmph.code = 0;
 icmp_param.skb = skb;
 icmp_param.offset = 0;
 icmp_param.data_len = 0;
 icmp_param.head_len = sizeof(struct icmphdr) + 12;
 icmp_reply(&icmp_param, skb);
out:
 return;
out_err:
 ICMP_INC_STATS_BH(dev_net(skb_dst(skb)->dev), ICMP_MIB_INERRORS);
 goto out;
}
