
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_id; int t_tdesc; } ;
typedef TYPE_1__ tdesc_t ;
typedef int merge_cb_data_t ;


 TYPE_1__* conjure_template (TYPE_1__*,int) ;
 int remap_node (int *,int ,int ,TYPE_1__*,int *) ;

__attribute__((used)) static tdesc_t *
conjure_plain(tdesc_t *old, int newselfid, merge_cb_data_t *mcd)
{
 tdesc_t *new = conjure_template(old, newselfid);

 (void) remap_node(&new->t_tdesc, old->t_tdesc, old->t_id, new, mcd);

 return (new);
}
