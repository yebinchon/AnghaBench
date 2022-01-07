
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int member_0; } ;
struct TYPE_9__ {int member_0; } ;
struct nf_nat_range {TYPE_2__ member_4; TYPE_1__ member_3; int member_2; int member_1; int member_0; } ;
struct nf_conn {TYPE_8__* tuplehash; } ;
typedef int __be32 ;
struct TYPE_13__ {int ip; } ;
struct TYPE_14__ {TYPE_5__ u3; } ;
struct TYPE_11__ {int ip; } ;
struct TYPE_12__ {TYPE_3__ u3; } ;
struct TYPE_15__ {TYPE_6__ src; TYPE_4__ dst; } ;
struct TYPE_16__ {TYPE_7__ tuple; } ;


 scalar_t__ HOOK2MANIP (unsigned int) ;
 size_t IP_CT_DIR_REPLY ;
 scalar_t__ IP_NAT_MANIP_SRC ;
 int IP_NAT_RANGE_MAP_IPS ;
 unsigned int nf_nat_setup_info (struct nf_conn*,struct nf_nat_range*,scalar_t__) ;
 int pr_debug (char*,struct nf_conn*,int *) ;

unsigned int
alloc_null_binding(struct nf_conn *ct, unsigned int hooknum)
{




 __be32 ip
  = (HOOK2MANIP(hooknum) == IP_NAT_MANIP_SRC
     ? ct->tuplehash[IP_CT_DIR_REPLY].tuple.dst.u3.ip
     : ct->tuplehash[IP_CT_DIR_REPLY].tuple.src.u3.ip);
 struct nf_nat_range range
  = { IP_NAT_RANGE_MAP_IPS, ip, ip, { 0 }, { 0 } };

 pr_debug("Allocating NULL binding for %p (%pI4)\n", ct, &ip);
 return nf_nat_setup_info(ct, &range, HOOK2MANIP(hooknum));
}
