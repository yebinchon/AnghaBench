
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_hw {int dummy; } ;


 int printk (char*) ;

__attribute__((used)) static u64 wbsoft_get_tsf(struct ieee80211_hw *dev)
{
 printk("wbsoft_get_tsf called\n");
 return 0;
}
