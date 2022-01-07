
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;


 int DMU_READ_PREFETCH ;
 int UMEM_NOFAIL ;
 int VERIFY (int) ;
 scalar_t__ dmu_read (int *,size_t,int ,size_t,char*,int ) ;
 int dump_nvlist (int *,int) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_unpack (char*,size_t,int **,int ) ;
 char* umem_alloc (size_t,int ) ;
 int umem_free (char*,size_t) ;

__attribute__((used)) static void
dump_packed_nvlist(objset_t *os, uint64_t object, void *data, size_t size)
{
 nvlist_t *nv;
 size_t nvsize = *(uint64_t *)data;
 char *packed = umem_alloc(nvsize, UMEM_NOFAIL);

 VERIFY(0 == dmu_read(os, object, 0, nvsize, packed, DMU_READ_PREFETCH));

 VERIFY(nvlist_unpack(packed, nvsize, &nv, 0) == 0);

 umem_free(packed, nvsize);

 dump_nvlist(nv, 8);

 nvlist_free(nv);
}
