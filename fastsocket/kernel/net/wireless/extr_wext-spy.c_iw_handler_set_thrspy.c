
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_thrspy {int low; } ;
struct iw_spy_data {int spy_thr_under; int spy_thr_low; } ;
struct iw_request_info {int dummy; } ;
struct iw_quality {int dummy; } ;


 int EOPNOTSUPP ;
 struct iw_spy_data* get_spydata (struct net_device*) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,char,int) ;

int iw_handler_set_thrspy(struct net_device * dev,
     struct iw_request_info *info,
     union iwreq_data * wrqu,
     char * extra)
{
 struct iw_spy_data * spydata = get_spydata(dev);
 struct iw_thrspy * threshold = (struct iw_thrspy *) extra;


 if (!spydata)
  return -EOPNOTSUPP;


 memcpy(&(spydata->spy_thr_low), &(threshold->low),
        2 * sizeof(struct iw_quality));


 memset(spydata->spy_thr_under, '\0', sizeof(spydata->spy_thr_under));

 return 0;
}
