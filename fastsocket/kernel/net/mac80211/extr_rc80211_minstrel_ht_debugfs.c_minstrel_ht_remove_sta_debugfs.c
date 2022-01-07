
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_ht_sta_priv {int dbg_stats; } ;


 int debugfs_remove (int ) ;

void
minstrel_ht_remove_sta_debugfs(void *priv, void *priv_sta)
{
 struct minstrel_ht_sta_priv *msp = priv_sta;

 debugfs_remove(msp->dbg_stats);
}
