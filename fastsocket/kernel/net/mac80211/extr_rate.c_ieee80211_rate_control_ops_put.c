
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rate_control_ops {int module; } ;


 int module_put (int ) ;

__attribute__((used)) static void ieee80211_rate_control_ops_put(struct rate_control_ops *ops)
{
 module_put(ops->module);
}
