
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_4__ {int count; int * item; } ;
struct TYPE_5__ {int options; TYPE_1__ fastStart; int h245Address; } ;
typedef TYPE_2__ Alerting_UUIE ;


 int eAlerting_UUIE_fastStart ;
 int eAlerting_UUIE_h245Address ;
 int expect_h245 (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int pr_debug (char*) ;
 int process_olc (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;

__attribute__((used)) static int process_alerting(struct sk_buff *skb, struct nf_conn *ct,
       enum ip_conntrack_info ctinfo,
       unsigned char **data, int dataoff,
       Alerting_UUIE *alert)
{
 int ret;
 int i;

 pr_debug("nf_ct_q931: Alerting\n");

 if (alert->options & eAlerting_UUIE_h245Address) {
  ret = expect_h245(skb, ct, ctinfo, data, dataoff,
      &alert->h245Address);
  if (ret < 0)
   return -1;
 }

 if (alert->options & eAlerting_UUIE_fastStart) {
  for (i = 0; i < alert->fastStart.count; i++) {
   ret = process_olc(skb, ct, ctinfo, data, dataoff,
       &alert->fastStart.item[i]);
   if (ret < 0)
    return -1;
  }
 }

 return 0;
}
