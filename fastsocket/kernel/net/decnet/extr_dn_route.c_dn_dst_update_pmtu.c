
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dst_entry {scalar_t__* metrics; TYPE_2__* neighbour; } ;
struct dn_dev {scalar_t__ use_long; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ dn_ptr; } ;


 scalar_t__ DN_MAX_NSP_DATA_HEADER ;
 int RTAX_ADVMSS ;
 int RTAX_MTU ;
 int dn_rt_mtu_expires ;
 scalar_t__ dst_metric (struct dst_entry*,int) ;
 int dst_metric_locked (struct dst_entry*,int) ;
 int dst_set_expires (struct dst_entry*,int ) ;

__attribute__((used)) static void dn_dst_update_pmtu(struct dst_entry *dst, u32 mtu)
{
 u32 min_mtu = 230;
 struct dn_dev *dn = dst->neighbour ?
       (struct dn_dev *)dst->neighbour->dev->dn_ptr : ((void*)0);

 if (dn && dn->use_long == 0)
  min_mtu -= 6;
 else
  min_mtu -= 21;

 if (dst_metric(dst, RTAX_MTU) > mtu && mtu >= min_mtu) {
  if (!(dst_metric_locked(dst, RTAX_MTU))) {
   dst->metrics[RTAX_MTU-1] = mtu;
   dst_set_expires(dst, dn_rt_mtu_expires);
  }
  if (!(dst_metric_locked(dst, RTAX_ADVMSS))) {
   u32 mss = mtu - DN_MAX_NSP_DATA_HEADER;
   if (dst_metric(dst, RTAX_ADVMSS) > mss)
    dst->metrics[RTAX_ADVMSS-1] = mss;
  }
 }
}
