
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_lkstats {int* stats; } ;
typedef int s64 ;


 int abs64 (int) ;

__attribute__((used)) static inline void gfs2_update_stats(struct gfs2_lkstats *s, unsigned index,
         s64 sample)
{
 s64 delta = sample - s->stats[index];
 s->stats[index] += (delta >> 3);
 index++;
 s->stats[index] += ((abs64(delta) - s->stats[index]) >> 2);
}
