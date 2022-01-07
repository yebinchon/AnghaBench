
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct flowi {int fl6_flowlabel; int fl6_src; int fl6_dst; } ;
struct fib_rule {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ plen; int addr; } ;
struct TYPE_4__ {scalar_t__ plen; int addr; } ;
struct fib6_rule {int tclass; TYPE_3__ common; TYPE_2__ src; TYPE_1__ dst; } ;


 int FIB_RULE_FIND_SADDR ;
 int RT6_LOOKUP_F_HAS_SADDR ;
 int ipv6_prefix_equal (int *,int *,scalar_t__) ;
 int ntohl (int ) ;

__attribute__((used)) static int fib6_rule_match(struct fib_rule *rule, struct flowi *fl, int flags)
{
 struct fib6_rule *r = (struct fib6_rule *) rule;

 if (r->dst.plen &&
     !ipv6_prefix_equal(&fl->fl6_dst, &r->dst.addr, r->dst.plen))
  return 0;






 if (r->src.plen) {
  if (flags & RT6_LOOKUP_F_HAS_SADDR) {
   if (!ipv6_prefix_equal(&fl->fl6_src, &r->src.addr,
            r->src.plen))
    return 0;
  } else if (!(r->common.flags & FIB_RULE_FIND_SADDR))
   return 0;
 }

 if (r->tclass && r->tclass != ((ntohl(fl->fl6_flowlabel) >> 20) & 0xff))
  return 0;

 return 1;
}
