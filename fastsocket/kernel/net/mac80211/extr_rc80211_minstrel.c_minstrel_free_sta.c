
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_sta_info {struct minstrel_sta_info* r; struct minstrel_sta_info* sample_table; } ;
struct ieee80211_sta {int dummy; } ;


 int kfree (struct minstrel_sta_info*) ;

__attribute__((used)) static void
minstrel_free_sta(void *priv, struct ieee80211_sta *sta, void *priv_sta)
{
 struct minstrel_sta_info *mi = priv_sta;

 kfree(mi->sample_table);
 kfree(mi->r);
 kfree(mi);
}
