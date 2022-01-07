
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_expect {int tuple; int helper; int flags; } ;
struct nf_conn {TYPE_3__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int __be16 ;
struct TYPE_9__ {int callSignalAddress; } ;
struct TYPE_6__ {int u3; } ;
struct TYPE_7__ {TYPE_1__ src; } ;
struct TYPE_8__ {TYPE_2__ tuple; } ;
typedef TYPE_4__ LocationConfirm ;


 int CTINFO2DIR (int) ;
 int IPPROTO_TCP ;
 int NF_CT_EXPECT_CLASS_DEFAULT ;
 int NF_CT_EXPECT_PERMANENT ;
 int get_h225_addr (struct nf_conn*,unsigned char*,int *,union nf_inet_addr*,int *) ;
 int nf_conntrack_helper_q931 ;
 int nf_ct_dump_tuple (int *) ;
 struct nf_conntrack_expect* nf_ct_expect_alloc (struct nf_conn*) ;
 int nf_ct_expect_init (struct nf_conntrack_expect*,int ,int ,int *,union nf_inet_addr*,int ,int *,int *) ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 scalar_t__ nf_ct_expect_related (struct nf_conntrack_expect*) ;
 int nf_ct_l3num (struct nf_conn*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int process_lcf(struct sk_buff *skb, struct nf_conn *ct,
         enum ip_conntrack_info ctinfo,
         unsigned char **data, LocationConfirm *lcf)
{
 int dir = CTINFO2DIR(ctinfo);
 int ret = 0;
 __be16 port;
 union nf_inet_addr addr;
 struct nf_conntrack_expect *exp;

 pr_debug("nf_ct_ras: LCF\n");

 if (!get_h225_addr(ct, *data, &lcf->callSignalAddress,
      &addr, &port))
  return 0;


 if ((exp = nf_ct_expect_alloc(ct)) == ((void*)0))
  return -1;
 nf_ct_expect_init(exp, NF_CT_EXPECT_CLASS_DEFAULT, nf_ct_l3num(ct),
     &ct->tuplehash[!dir].tuple.src.u3, &addr,
     IPPROTO_TCP, ((void*)0), &port);
 exp->flags = NF_CT_EXPECT_PERMANENT;
 exp->helper = nf_conntrack_helper_q931;

 if (nf_ct_expect_related(exp) == 0) {
  pr_debug("nf_ct_ras: expect Q.931 ");
  nf_ct_dump_tuple(&exp->tuple);
 } else
  ret = -1;

 nf_ct_expect_put(exp);



 return ret;
}
