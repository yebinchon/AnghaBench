
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u64 ;
typedef int u32 ;
struct mv88e6xxx_priv_state {int stats_mutex; } ;
struct mv88e6xxx_hw_stat {int sizeof_stat; scalar_t__ reg; } ;
struct dsa_switch {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mv88e6xxx_stats_read (struct dsa_switch*,scalar_t__,int*) ;
 int mv88e6xxx_stats_snapshot (struct dsa_switch*,int) ;

void mv88e6xxx_get_ethtool_stats(struct dsa_switch *ds,
     int nr_stats, struct mv88e6xxx_hw_stat *stats,
     int port, uint64_t *data)
{
 struct mv88e6xxx_priv_state *ps = (void *)(ds + 1);
 int ret;
 int i;

 mutex_lock(&ps->stats_mutex);

 ret = mv88e6xxx_stats_snapshot(ds, port);
 if (ret < 0) {
  mutex_unlock(&ps->stats_mutex);
  return;
 }




 for (i = 0; i < nr_stats; i++) {
  struct mv88e6xxx_hw_stat *s = stats + i;
  u32 low;
  u32 high;

  mv88e6xxx_stats_read(ds, s->reg, &low);
  if (s->sizeof_stat == 8)
   mv88e6xxx_stats_read(ds, s->reg + 1, &high);
  else
   high = 0;

  data[i] = (((u64)high) << 32) | low;
 }

 mutex_unlock(&ps->stats_mutex);
}
