
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_id; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_8__ {int md_tdtbr; } ;
typedef TYPE_2__ merge_cb_data_t ;


 int debug (int,char*,int ,int ) ;
 int list_remove (int ,void*,int *,int *) ;
 int remap_node (TYPE_1__**,TYPE_1__*,int,int *,TYPE_2__*) ;
 int tdesc_name (TYPE_1__*) ;

__attribute__((used)) static int
add_tdtbr_cb(void *data, void *arg)
{
 tdesc_t **tdpp = data;
 merge_cb_data_t *mcd = arg;

 debug(3, "Remapping %s (%d)\n", tdesc_name(*tdpp), (*tdpp)->t_id);

 if (!remap_node(tdpp, *tdpp, -1, ((void*)0), mcd))
  return (0);

 (void) list_remove(mcd->md_tdtbr, (void *)tdpp, ((void*)0), ((void*)0));
 return (1);
}
