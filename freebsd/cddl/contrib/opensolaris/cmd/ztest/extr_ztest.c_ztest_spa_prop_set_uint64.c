
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_prop_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int ASSERT0 (int) ;
 int ENOSPC ;
 int FTAG ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int spa_prop_set (int *,int *) ;
 int zpool_prop_to_name (int ) ;
 int ztest_record_enospc (int ) ;
 int * ztest_spa ;

__attribute__((used)) static int
ztest_spa_prop_set_uint64(zpool_prop_t prop, uint64_t value)
{
 spa_t *spa = ztest_spa;
 nvlist_t *props = ((void*)0);
 int error;

 VERIFY(nvlist_alloc(&props, NV_UNIQUE_NAME, 0) == 0);
 VERIFY(nvlist_add_uint64(props, zpool_prop_to_name(prop), value) == 0);

 error = spa_prop_set(spa, props);

 nvlist_free(props);

 if (error == ENOSPC) {
  ztest_record_enospc(FTAG);
  return (error);
 }
 ASSERT0(error);

 return (error);
}
