
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net {int dummy; } ;
struct ipv6_saddr_score {int rule; int scopedist; int matchlen; int scorebits; TYPE_4__* ifa; int addr_type; } ;
struct ipv6_saddr_dst {int scope; int prefs; int * addr; int label; int ifindex; } ;
struct TYPE_8__ {int flags; int addr; TYPE_3__* idev; } ;
struct TYPE_6__ {int use_tempaddr; } ;
struct TYPE_7__ {TYPE_2__ cnf; TYPE_1__* dev; } ;
struct TYPE_5__ {int ifindex; } ;


 int IFA_F_DEPRECATED ;
 int IFA_F_HOMEADDRESS ;
 int IFA_F_OPTIMISTIC ;
 int IFA_F_TEMPORARY ;
 int IPV6_PREFER_SRC_COA ;
 int IPV6_PREFER_SRC_PUBLIC ;
 int IPV6_PREFER_SRC_TMP ;
 int __ipv6_addr_src_scope (int ) ;
 int __set_bit (int,int ) ;
 int ipv6_addr_diff (int *,int *) ;
 int ipv6_addr_equal (int *,int *) ;
 int ipv6_addr_label (struct net*,int *,int ,int ) ;
 int ipv6_addr_orchid (int *) ;
 int ipv6_saddr_preferred (int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int ipv6_get_saddr_eval(struct net *net,
          struct ipv6_saddr_score *score,
          struct ipv6_saddr_dst *dst,
          int i)
{
 int ret;

 if (i <= score->rule) {
  switch (i) {
  case 128:
   ret = score->scopedist;
   break;
  case 130:
   ret = score->matchlen;
   break;
  default:
   ret = !!test_bit(i, score->scorebits);
  }
  goto out;
 }

 switch (i) {
 case 136:

  ret = !!score->ifa;
  break;
 case 134:

  ret = ipv6_addr_equal(&score->ifa->addr, dst->addr);
  break;
 case 128:
  ret = __ipv6_addr_src_scope(score->addr_type);
  if (ret >= dst->scope)
   ret = -ret;
  else
   ret -= 128;
  score->scopedist = ret;
  break;
 case 131:

  ret = ipv6_saddr_preferred(score->addr_type) ||
        !(score->ifa->flags & (IFA_F_DEPRECATED|IFA_F_OPTIMISTIC));
  break;
 case 133:

  ret = (!dst->ifindex ||
         dst->ifindex == score->ifa->idev->dev->ifindex);
  break;
 case 135:

  ret = ipv6_addr_label(net,
          &score->ifa->addr, score->addr_type,
          score->ifa->idev->dev->ifindex) == dst->label;
  break;
 case 132:



  ret = !(ipv6_addr_orchid(&score->ifa->addr) ^
   ipv6_addr_orchid(dst->addr));
  break;
 case 130:

  score->matchlen = ret = ipv6_addr_diff(&score->ifa->addr,
             dst->addr);
  break;
 default:
  ret = 0;
 }

 if (ret)
  __set_bit(i, score->scorebits);
 score->rule = i;
out:
 return ret;
}
