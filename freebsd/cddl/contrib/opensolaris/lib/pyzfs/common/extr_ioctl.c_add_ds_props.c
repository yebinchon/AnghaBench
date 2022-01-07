
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dds_inconsistent; int dds_is_snapshot; int dds_num_clones; } ;
struct TYPE_4__ {TYPE_2__ zc_objset_stats; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef TYPE_2__ dmu_objset_stats_t ;
typedef int PyObject ;


 int PyDict_SetItemString (int *,char*,int ) ;
 int fakepropval (int ) ;

__attribute__((used)) static void
add_ds_props(zfs_cmd_t *zc, PyObject *nvl)
{
 dmu_objset_stats_t *s = &zc->zc_objset_stats;
 PyDict_SetItemString(nvl, "numclones",
     fakepropval(s->dds_num_clones));
 PyDict_SetItemString(nvl, "issnap",
     fakepropval(s->dds_is_snapshot));
 PyDict_SetItemString(nvl, "inconsistent",
     fakepropval(s->dds_inconsistent));
}
