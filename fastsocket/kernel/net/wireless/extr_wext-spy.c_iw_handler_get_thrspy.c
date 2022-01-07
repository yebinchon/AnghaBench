
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_thrspy {int low; } ;
struct iw_spy_data {int spy_thr_low; } ;
struct iw_request_info {int dummy; } ;
struct iw_quality {int dummy; } ;


 int EOPNOTSUPP ;
 struct iw_spy_data* get_spydata (struct net_device*) ;
 int memcpy (int *,int *,int) ;

int iw_handler_get_thrspy(struct net_device * dev,
     struct iw_request_info *info,
     union iwreq_data * wrqu,
     char * extra)
{
 struct iw_spy_data * spydata = get_spydata(dev);
 struct iw_thrspy * threshold = (struct iw_thrspy *) extra;


 if (!spydata)
  return -EOPNOTSUPP;


 memcpy(&(threshold->low), &(spydata->spy_thr_low),
        2 * sizeof(struct iw_quality));

 return 0;
}
