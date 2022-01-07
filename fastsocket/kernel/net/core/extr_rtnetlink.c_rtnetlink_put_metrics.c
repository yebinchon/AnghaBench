
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int NLA_PUT_U32 (struct sk_buff*,int,scalar_t__) ;
 int RTAX_MAX ;
 int RTA_METRICS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

int rtnetlink_put_metrics(struct sk_buff *skb, u32 *metrics)
{
 struct nlattr *mx;
 int i, valid = 0;

 mx = nla_nest_start(skb, RTA_METRICS);
 if (mx == ((void*)0))
  return -ENOBUFS;

 for (i = 0; i < RTAX_MAX; i++) {
  if (metrics[i]) {
   valid++;
   NLA_PUT_U32(skb, i+1, metrics[i]);
  }
 }

 if (!valid) {
  nla_nest_cancel(skb, mx);
  return 0;
 }

 return nla_nest_end(skb, mx);

nla_put_failure:
 nla_nest_cancel(skb, mx);
 return -EMSGSIZE;
}
