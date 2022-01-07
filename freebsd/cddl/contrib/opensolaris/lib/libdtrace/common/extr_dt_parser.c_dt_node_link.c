
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;



dt_node_t *
dt_node_link(dt_node_t *lp, dt_node_t *rp)
{
 dt_node_t *dnp;

 if (lp == ((void*)0))
  return (rp);
 else if (rp == ((void*)0))
  return (lp);

 for (dnp = lp; dnp->dn_list != ((void*)0); dnp = dnp->dn_list)
  continue;

 dnp->dn_list = rp;
 return (lp);
}
