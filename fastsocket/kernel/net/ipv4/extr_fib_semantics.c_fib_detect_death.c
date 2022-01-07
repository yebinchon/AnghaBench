
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {int nud_state; } ;
struct fib_info {int fib_dev; TYPE_1__* fib_nh; } ;
struct TYPE_2__ {int nh_gw; } ;


 int NUD_NONE ;
 int NUD_REACHABLE ;
 int NUD_VALID ;
 int arp_tbl ;
 struct neighbour* neigh_lookup (int *,int *,int ) ;
 int neigh_release (struct neighbour*) ;

int fib_detect_death(struct fib_info *fi, int order,
       struct fib_info **last_resort, int *last_idx, int dflt)
{
 struct neighbour *n;
 int state = NUD_NONE;

 n = neigh_lookup(&arp_tbl, &fi->fib_nh[0].nh_gw, fi->fib_dev);
 if (n) {
  state = n->nud_state;
  neigh_release(n);
 }
 if (state == NUD_REACHABLE)
  return 0;
 if ((state&NUD_VALID) && order != dflt)
  return 0;
 if ((state&NUD_VALID) ||
     (*last_idx<0 && order > dflt)) {
  *last_resort = fi;
  *last_idx = order;
 }
 return 1;
}
