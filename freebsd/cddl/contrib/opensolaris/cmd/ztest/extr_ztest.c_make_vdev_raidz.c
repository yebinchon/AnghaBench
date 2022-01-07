
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_2__ {int zo_raidz_parity; } ;


 int NV_UNIQUE_NAME ;
 int UMEM_NOFAIL ;
 int VDEV_TYPE_RAIDZ ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_NPARITY ;
 int ZPOOL_CONFIG_TYPE ;
 int * make_vdev_file (char*,char*,char*,size_t,int ) ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,int) ;
 scalar_t__ nvlist_add_string (int *,int ,int ) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int ** umem_alloc (int,int ) ;
 int umem_free (int **,int) ;
 TYPE_1__ ztest_opts ;

__attribute__((used)) static nvlist_t *
make_vdev_raidz(char *path, char *aux, char *pool, size_t size,
    uint64_t ashift, int r)
{
 nvlist_t *raidz, **child;
 int c;

 if (r < 2)
  return (make_vdev_file(path, aux, pool, size, ashift));
 child = umem_alloc(r * sizeof (nvlist_t *), UMEM_NOFAIL);

 for (c = 0; c < r; c++)
  child[c] = make_vdev_file(path, aux, pool, size, ashift);

 VERIFY(nvlist_alloc(&raidz, NV_UNIQUE_NAME, 0) == 0);
 VERIFY(nvlist_add_string(raidz, ZPOOL_CONFIG_TYPE,
     VDEV_TYPE_RAIDZ) == 0);
 VERIFY(nvlist_add_uint64(raidz, ZPOOL_CONFIG_NPARITY,
     ztest_opts.zo_raidz_parity) == 0);
 VERIFY(nvlist_add_nvlist_array(raidz, ZPOOL_CONFIG_CHILDREN,
     child, r) == 0);

 for (c = 0; c < r; c++)
  nvlist_free(child[c]);

 umem_free(child, r * sizeof (nvlist_t *));

 return (raidz);
}
