
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ level; } ;
struct TYPE_3__ {scalar_t__ level; } ;
struct iw_spy_data {int spy_number; int* spy_thr_under; TYPE_2__ spy_thr_low; TYPE_1__ spy_thr_high; int * spy_stat; int * spy_address; } ;
struct iw_quality {scalar_t__ level; } ;


 scalar_t__ ether_addr_equal (unsigned char*,int ) ;
 struct iw_spy_data* get_spydata (struct net_device*) ;
 int iw_send_thrspy_event (struct net_device*,struct iw_spy_data*,unsigned char*,struct iw_quality*) ;
 int memcpy (int *,struct iw_quality*,int) ;

void wireless_spy_update(struct net_device * dev,
    unsigned char * address,
    struct iw_quality * wstats)
{
 struct iw_spy_data * spydata = get_spydata(dev);
 int i;
 int match = -1;


 if (!spydata)
  return;


 for (i = 0; i < spydata->spy_number; i++)
  if (ether_addr_equal(address, spydata->spy_address[i])) {
   memcpy(&(spydata->spy_stat[i]), wstats,
          sizeof(struct iw_quality));
   match = i;
  }





 if (match >= 0) {
  if (spydata->spy_thr_under[match]) {
   if (wstats->level > spydata->spy_thr_high.level) {
    spydata->spy_thr_under[match] = 0;
    iw_send_thrspy_event(dev, spydata,
           address, wstats);
   }
  } else {
   if (wstats->level < spydata->spy_thr_low.level) {
    spydata->spy_thr_under[match] = 1;
    iw_send_thrspy_event(dev, spydata,
           address, wstats);
   }
  }
 }
}
