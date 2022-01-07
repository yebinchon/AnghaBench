
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int nud_state; struct neigh_parms* parms; } ;
struct neigh_parms {int ucast_probes; int app_probes; int mcast_probes; } ;


 int NUD_PROBE ;

__attribute__((used)) static __inline__ int neigh_max_probes(struct neighbour *n)
{
 struct neigh_parms *p = n->parms;
 return (n->nud_state & NUD_PROBE ?
  p->ucast_probes :
  p->ucast_probes + p->app_probes + p->mcast_probes);
}
