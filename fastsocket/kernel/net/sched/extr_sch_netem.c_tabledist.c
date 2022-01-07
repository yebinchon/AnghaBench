
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct disttable {long* table; int size; } ;
struct crndstate {int dummy; } ;
typedef int psched_tdiff_t ;


 int NETEM_DIST_SCALE ;
 int get_crandom (struct crndstate*) ;

__attribute__((used)) static psched_tdiff_t tabledist(psched_tdiff_t mu, psched_tdiff_t sigma,
    struct crndstate *state,
    const struct disttable *dist)
{
 psched_tdiff_t x;
 long t;
 u32 rnd;

 if (sigma == 0)
  return mu;

 rnd = get_crandom(state);


 if (dist == ((void*)0))
  return (rnd % (2*sigma)) - sigma + mu;

 t = dist->table[rnd % dist->size];
 x = (sigma % NETEM_DIST_SCALE) * t;
 if (x >= 0)
  x += NETEM_DIST_SCALE/2;
 else
  x -= NETEM_DIST_SCALE/2;

 return x / NETEM_DIST_SCALE + (sigma / NETEM_DIST_SCALE) * t + mu;
}
