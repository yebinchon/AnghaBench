
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_7__ {scalar_t__ probability; scalar_t__ count; int flags; int src; } ;


 scalar_t__ REG_BR_PROB_BASE ;
 TYPE_1__* find_edge (int ,int ) ;
 int redirect_edge_succ (TYPE_1__*,int ) ;
 int remove_edge (TYPE_1__*) ;

edge
redirect_edge_succ_nodup (edge e, basic_block new_succ)
{
  edge s;

  s = find_edge (e->src, new_succ);
  if (s && s != e)
    {
      s->flags |= e->flags;
      s->probability += e->probability;
      if (s->probability > REG_BR_PROB_BASE)
 s->probability = REG_BR_PROB_BASE;
      s->count += e->count;
      remove_edge (e);
      e = s;
    }
  else
    redirect_edge_succ (e, new_succ);

  return e;
}
