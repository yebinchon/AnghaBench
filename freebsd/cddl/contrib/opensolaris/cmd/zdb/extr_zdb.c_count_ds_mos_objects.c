
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ds_dir; int ds_object; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {int ds_snapnames_zapobj; int ds_userrefs_obj; int ds_props_obj; int ds_next_clones_obj; } ;


 int count_dir_mos_objects (int ) ;
 int dsl_dataset_is_snapshot (TYPE_1__*) ;
 TYPE_2__* dsl_dataset_phys (TYPE_1__*) ;
 int mos_obj_refd (int ) ;

__attribute__((used)) static void
count_ds_mos_objects(dsl_dataset_t *ds)
{
 mos_obj_refd(ds->ds_object);
 mos_obj_refd(dsl_dataset_phys(ds)->ds_next_clones_obj);
 mos_obj_refd(dsl_dataset_phys(ds)->ds_props_obj);
 mos_obj_refd(dsl_dataset_phys(ds)->ds_userrefs_obj);
 mos_obj_refd(dsl_dataset_phys(ds)->ds_snapnames_zapobj);

 if (!dsl_dataset_is_snapshot(ds)) {
  count_dir_mos_objects(ds->ds_dir);
 }
}
