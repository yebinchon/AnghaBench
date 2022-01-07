
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ od_object; int od_name; int od_crgen; int od_gen; int od_crblocksize; int od_blocksize; int od_crtype; int od_type; int od_crdnodesize; int od_dir; } ;
typedef TYPE_1__ ztest_od_t ;
struct TYPE_11__ {int zd_dirobj_lock; } ;
typedef TYPE_2__ ztest_ds_t ;
struct TYPE_12__ {scalar_t__ lr_foid; int * lr_crtime; int lr_gen; int lrz_dnodesize; int lrz_bonustype; int lrz_ibshift; int lrz_blocksize; int lrz_type; int lr_doid; } ;
typedef TYPE_3__ lr_create_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int DMU_OT_UINT64_OTHER ;
 int MUTEX_HELD (int *) ;
 int time (int *) ;
 TYPE_3__* ztest_lr_alloc (int,int ) ;
 int ztest_lr_free (TYPE_3__*,int,int ) ;
 int ztest_random_ibshift () ;
 scalar_t__ ztest_replay_create (TYPE_2__*,TYPE_3__*,int ) ;

__attribute__((used)) static int
ztest_create(ztest_ds_t *zd, ztest_od_t *od, int count)
{
 int missing = 0;

 ASSERT(MUTEX_HELD(&zd->zd_dirobj_lock));

 for (int i = 0; i < count; i++, od++) {
  if (missing) {
   od->od_object = 0;
   missing++;
   continue;
  }

  lr_create_t *lr = ztest_lr_alloc(sizeof (*lr), od->od_name);

  lr->lr_doid = od->od_dir;
  lr->lr_foid = 0;
  lr->lrz_type = od->od_crtype;
  lr->lrz_blocksize = od->od_crblocksize;
  lr->lrz_ibshift = ztest_random_ibshift();
  lr->lrz_bonustype = DMU_OT_UINT64_OTHER;
  lr->lrz_dnodesize = od->od_crdnodesize;
  lr->lr_gen = od->od_crgen;
  lr->lr_crtime[0] = time(((void*)0));

  if (ztest_replay_create(zd, lr, B_FALSE) != 0) {
   ASSERT(missing == 0);
   od->od_object = 0;
   missing++;
  } else {
   od->od_object = lr->lr_foid;
   od->od_type = od->od_crtype;
   od->od_blocksize = od->od_crblocksize;
   od->od_gen = od->od_crgen;
   ASSERT(od->od_object != 0);
  }

  ztest_lr_free(lr, sizeof (*lr), od->od_name);
 }

 return (missing);
}
