
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int merge_cb_data_t ;
struct TYPE_6__ {int ii_nargs; int * ii_args; int ii_dtype; } ;
typedef TYPE_1__ iidesc_t ;


 TYPE_1__* iidesc_dup (TYPE_1__*) ;
 int remap_node (int *,int ,int,int *,int *) ;

__attribute__((used)) static iidesc_t *
conjure_iidesc(iidesc_t *old, merge_cb_data_t *mcd)
{
 iidesc_t *new = iidesc_dup(old);
 int i;

 (void) remap_node(&new->ii_dtype, old->ii_dtype, -1, ((void*)0), mcd);
 for (i = 0; i < new->ii_nargs; i++) {
  (void) remap_node(&new->ii_args[i], old->ii_args[i], -1, ((void*)0),
      mcd);
 }

 return (new);
}
