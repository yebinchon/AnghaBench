
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_if_init_conf {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int printk (char*) ;

__attribute__((used)) static void wbsoft_remove_interface(struct ieee80211_hw *dev,
        struct ieee80211_if_init_conf *conf)
{
 printk("wbsoft_remove interface called\n");
}
