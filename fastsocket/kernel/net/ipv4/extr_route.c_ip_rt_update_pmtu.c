
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dst_entry {int* metrics; } ;


 int NETEVENT_PMTU_UPDATE ;
 int RTAX_LOCK ;
 int RTAX_MTU ;
 int call_netevent_notifiers (int ,struct dst_entry*) ;
 int dst_metric_locked (struct dst_entry*,int) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_set_expires (struct dst_entry*,int ) ;
 int ip_rt_min_pmtu ;
 int ip_rt_mtu_expires ;

__attribute__((used)) static void ip_rt_update_pmtu(struct dst_entry *dst, u32 mtu)
{
 if (dst_mtu(dst) > mtu && mtu >= 68 &&
     !(dst_metric_locked(dst, RTAX_MTU))) {
  if (mtu < ip_rt_min_pmtu) {
   mtu = ip_rt_min_pmtu;
   dst->metrics[RTAX_LOCK-1] |= (1 << RTAX_MTU);
  }
  dst->metrics[RTAX_MTU-1] = mtu;
  dst_set_expires(dst, ip_rt_mtu_expires);
  call_netevent_notifiers(NETEVENT_PMTU_UPDATE, dst);
 }
}
