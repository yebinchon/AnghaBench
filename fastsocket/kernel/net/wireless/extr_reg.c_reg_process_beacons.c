
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;


 int last_request ;
 int wiphy_update_beacon_reg (struct wiphy*) ;

__attribute__((used)) static void reg_process_beacons(struct wiphy *wiphy)
{




 if (!last_request)
  return;
 wiphy_update_beacon_reg(wiphy);
}
