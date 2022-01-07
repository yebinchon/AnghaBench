
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct ieee80211_sub_if_data {int wdev; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {TYPE_1__* ops; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_3__ {int change_interface; } ;


 int ASSERT_RTNL () ;
 int EBUSY ;





 int WARN (int,char*,int) ;
 int drv_change_interface (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,int) ;
 int ieee80211_check_concurrent_iface (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_check_queues (struct ieee80211_sub_if_data*) ;
 int ieee80211_do_open (int *,int) ;
 int ieee80211_do_stop (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_setup_sdata (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_teardown_sdata (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static int ieee80211_runtime_change_iftype(struct ieee80211_sub_if_data *sdata,
        enum nl80211_iftype type)
{
 struct ieee80211_local *local = sdata->local;
 int ret, err;
 enum nl80211_iftype internal_type = type;
 bool p2p = 0;

 ASSERT_RTNL();

 if (!local->ops->change_interface)
  return -EBUSY;

 switch (sdata->vif.type) {
 case 131:
 case 128:
 case 132:






  break;
 default:
  return -EBUSY;
 }

 switch (type) {
 case 131:
 case 128:
 case 132:






  break;
 case 130:
  p2p = 1;
  internal_type = 128;
  break;
 case 129:
  p2p = 1;
  internal_type = 131;
  break;
 default:
  return -EBUSY;
 }

 ret = ieee80211_check_concurrent_iface(sdata, internal_type);
 if (ret)
  return ret;

 ieee80211_do_stop(sdata, 0);

 ieee80211_teardown_sdata(sdata);

 ret = drv_change_interface(local, sdata, internal_type, p2p);
 if (ret)
  type = sdata->vif.type;






 ieee80211_check_queues(sdata);

 ieee80211_setup_sdata(sdata, type);

 err = ieee80211_do_open(&sdata->wdev, 0);
 WARN(err, "type change: do_open returned %d", err);

 return ret;
}
