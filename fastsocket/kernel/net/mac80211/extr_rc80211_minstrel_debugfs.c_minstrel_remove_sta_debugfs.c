
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_sta_info {int dbg_stats; } ;


 int debugfs_remove (int ) ;

void
minstrel_remove_sta_debugfs(void *priv, void *priv_sta)
{
 struct minstrel_sta_info *mi = priv_sta;

 debugfs_remove(mi->dbg_stats);
}
