
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_sta_info {int dbg_stats; } ;
struct dentry {int dummy; } ;


 int S_IRUGO ;
 int debugfs_create_file (char*,int ,struct dentry*,struct minstrel_sta_info*,int *) ;
 int minstrel_stat_fops ;

void
minstrel_add_sta_debugfs(void *priv, void *priv_sta, struct dentry *dir)
{
 struct minstrel_sta_info *mi = priv_sta;

 mi->dbg_stats = debugfs_create_file("rc_stats", S_IRUGO, dir, mi,
   &minstrel_stat_fops);
}
