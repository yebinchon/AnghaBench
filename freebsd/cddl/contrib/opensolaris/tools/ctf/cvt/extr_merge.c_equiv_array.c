
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* t_ardef; } ;
typedef TYPE_1__ tdesc_t ;
typedef int equiv_data_t ;
struct TYPE_6__ {scalar_t__ ad_nelems; int ad_idxtype; int ad_contents; } ;
typedef TYPE_2__ ardef_t ;


 int equiv_node (int ,int ,int *) ;

__attribute__((used)) static int
equiv_array(tdesc_t *stdp, tdesc_t *ttdp, equiv_data_t *ed)
{
 ardef_t *ar1 = stdp->t_ardef, *ar2 = ttdp->t_ardef;

 if (!equiv_node(ar1->ad_contents, ar2->ad_contents, ed) ||
     !equiv_node(ar1->ad_idxtype, ar2->ad_idxtype, ed))
  return (0);

 if (ar1->ad_nelems != ar2->ad_nelems)
  return (0);

 return (1);
}
