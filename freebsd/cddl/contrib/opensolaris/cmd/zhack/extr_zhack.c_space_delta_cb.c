
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ dmu_object_type_t ;


 scalar_t__ DMU_OT_SA ;
 scalar_t__ DMU_OT_ZNODE ;
 int ENOENT ;
 int abort () ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int
space_delta_cb(dmu_object_type_t bonustype, void *data,
    uint64_t *userp, uint64_t *groupp)
{



 if (bonustype != DMU_OT_ZNODE && bonustype != DMU_OT_SA)
  return (ENOENT);
 (void) fprintf(stderr, "modifying object that needs user accounting");
 abort();

}
