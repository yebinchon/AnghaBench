
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {int nud_state; TYPE_1__* parms; int probes; scalar_t__ updated; } ;
struct TYPE_2__ {scalar_t__ retrans_time; int ucast_probes; } ;


 int NUD_FAILED ;
 int NUD_PROBE ;
 int atomic_set (int *,int ) ;
 scalar_t__ jiffies ;
 int neigh_add_timer (struct neighbour*,scalar_t__) ;

void __neigh_set_probe_once(struct neighbour *neigh)
{
 neigh->updated = jiffies;
 if (!(neigh->nud_state & NUD_FAILED))
  return;
 neigh->nud_state = NUD_PROBE;
 atomic_set(&neigh->probes, neigh->parms->ucast_probes);
 neigh_add_timer(neigh,
   jiffies + neigh->parms->retrans_time);
}
