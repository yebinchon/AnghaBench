
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {TYPE_1__* ops; struct hh_cache* hh; int output; } ;
struct hh_cache {int hh_output; struct hh_cache* hh_next; } ;
struct TYPE_2__ {int hh_output; int connected_output; } ;


 int NEIGH_PRINTK2 (char*,struct neighbour*) ;

__attribute__((used)) static void neigh_connect(struct neighbour *neigh)
{
 struct hh_cache *hh;

 NEIGH_PRINTK2("neigh %p is connected.\n", neigh);

 neigh->output = neigh->ops->connected_output;

 for (hh = neigh->hh; hh; hh = hh->hh_next)
  hh->hh_output = neigh->ops->hh_output;
}
