
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int od_object; } ;
typedef TYPE_1__ ztest_od_t ;
typedef int ztest_ds_t ;
typedef int uint64_t ;
typedef int od ;


 int DMU_OT_UINT64_OTHER ;
 int FTAG ;
 unsigned long long SPA_MAXBLOCKSHIFT ;
 int UMEM_NOFAIL ;
 int ZTEST_RANGE_LOCKS ;
 int umem_free (void*,int) ;
 void* umem_zalloc (int,int ) ;
 int ztest_io (int *,int ,int) ;
 scalar_t__ ztest_object_init (int *,TYPE_1__*,int,int) ;
 int ztest_od_init (TYPE_1__*,int,int ,int ,int ,int,int ,int ) ;
 int ztest_prealloc (int *,int ,int,int) ;
 int ztest_random (int) ;
 int ztest_random_blocksize () ;
 scalar_t__ ztest_truncate (int *,int ,int,int) ;
 scalar_t__ ztest_write (int *,int ,int,int,void*) ;

void
ztest_dmu_prealloc(ztest_ds_t *zd, uint64_t id)
{
 ztest_od_t od[1];
 uint64_t offset = (1ULL << (ztest_random(4) + SPA_MAXBLOCKSHIFT)) +
     (ztest_random(ZTEST_RANGE_LOCKS) << SPA_MAXBLOCKSHIFT);
 uint64_t count = ztest_random(20) + 1;
 uint64_t blocksize = ztest_random_blocksize();
 void *data;

 ztest_od_init(&od[0], id, FTAG, 0, DMU_OT_UINT64_OTHER, blocksize,
     0, 0);

 if (ztest_object_init(zd, od, sizeof (od), !ztest_random(2)) != 0)
  return;

 if (ztest_truncate(zd, od[0].od_object, offset, count * blocksize) != 0)
  return;

 ztest_prealloc(zd, od[0].od_object, offset, count * blocksize);

 data = umem_zalloc(blocksize, UMEM_NOFAIL);

 while (ztest_random(count) != 0) {
  uint64_t randoff = offset + (ztest_random(count) * blocksize);
  if (ztest_write(zd, od[0].od_object, randoff, blocksize,
      data) != 0)
   break;
  while (ztest_random(4) != 0)
   ztest_io(zd, od[0].od_object, randoff);
 }

 umem_free(data, blocksize);
}
