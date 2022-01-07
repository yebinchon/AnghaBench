
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct iw_spy_data {int spy_number; int spy_stat; int * spy_address; } ;
struct iw_request_info {int dummy; } ;
struct iw_quality {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int IW_MAX_SPY ;
 struct iw_spy_data* get_spydata (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int smp_wmb () ;

int iw_handler_set_spy(struct net_device * dev,
         struct iw_request_info * info,
         union iwreq_data * wrqu,
         char * extra)
{
 struct iw_spy_data * spydata = get_spydata(dev);
 struct sockaddr * address = (struct sockaddr *) extra;


 if (!spydata)
  return -EOPNOTSUPP;




 spydata->spy_number = 0;







 smp_wmb();


 if (wrqu->data.length > 0) {
  int i;


  for (i = 0; i < wrqu->data.length; i++)
   memcpy(spydata->spy_address[i], address[i].sa_data,
          ETH_ALEN);

  memset(spydata->spy_stat, 0,
         sizeof(struct iw_quality) * IW_MAX_SPY);
 }


 smp_wmb();


 spydata->spy_number = wrqu->data.length;

 return 0;
}
