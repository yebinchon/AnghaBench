
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t req_smps; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {size_t smps_mode; TYPE_3__ u; TYPE_1__ vif; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 char** smps_modes ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static ssize_t ieee80211_if_fmt_smps(const struct ieee80211_sub_if_data *sdata,
         char *buf, int buflen)
{
 if (sdata->vif.type != NL80211_IFTYPE_STATION)
  return -EOPNOTSUPP;

 return snprintf(buf, buflen, "request: %s\nused: %s\n",
   smps_modes[sdata->u.mgd.req_smps],
   smps_modes[sdata->smps_mode]);
}
