
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int plen; } ;
struct rt6_info {int rt6i_flags; TYPE_1__ rt6i_dst; } ;
struct dst_entry {int * metrics; } ;


 int IPV6_MIN_MTU ;
 int NETEVENT_PMTU_UPDATE ;
 int RTAX_FEATURES ;
 int RTAX_FEATURE_ALLFRAG ;
 int RTAX_MTU ;
 int RTF_MODIFIED ;
 int call_netevent_notifiers (int ,struct dst_entry*) ;
 int dst_mtu (struct dst_entry*) ;

__attribute__((used)) static void ip6_rt_update_pmtu(struct dst_entry *dst, u32 mtu)
{
 struct rt6_info *rt6 = (struct rt6_info*)dst;

 if (mtu < dst_mtu(dst) && rt6->rt6i_dst.plen == 128) {
  rt6->rt6i_flags |= RTF_MODIFIED;
  if (mtu < IPV6_MIN_MTU) {
   mtu = IPV6_MIN_MTU;
   dst->metrics[RTAX_FEATURES-1] |= RTAX_FEATURE_ALLFRAG;
  }
  dst->metrics[RTAX_MTU-1] = mtu;
  call_netevent_notifiers(NETEVENT_PMTU_UPDATE, dst);
 }
}
