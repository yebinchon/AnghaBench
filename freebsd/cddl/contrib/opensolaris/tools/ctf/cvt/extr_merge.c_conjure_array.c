
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* t_ardef; int t_id; } ;
typedef TYPE_1__ tdesc_t ;
typedef int merge_cb_data_t ;
struct TYPE_10__ {int ad_nelems; int ad_idxtype; int ad_contents; } ;
typedef TYPE_2__ ardef_t ;


 TYPE_1__* conjure_template (TYPE_1__*,int) ;
 int remap_node (int *,int ,int ,TYPE_1__*,int *) ;
 TYPE_2__* xmalloc (int) ;

__attribute__((used)) static tdesc_t *
conjure_array(tdesc_t *old, int newselfid, merge_cb_data_t *mcd)
{
 tdesc_t *new = conjure_template(old, newselfid);
 ardef_t *nar = xmalloc(sizeof (ardef_t));
 ardef_t *oar = old->t_ardef;

 (void) remap_node(&nar->ad_contents, oar->ad_contents, old->t_id, new,
     mcd);
 (void) remap_node(&nar->ad_idxtype, oar->ad_idxtype, old->t_id, new,
     mcd);

 nar->ad_nelems = oar->ad_nelems;

 new->t_ardef = nar;

 return (new);
}
