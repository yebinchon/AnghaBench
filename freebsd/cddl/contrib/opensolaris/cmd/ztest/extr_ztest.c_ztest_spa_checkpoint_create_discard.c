
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ztest_ds_t ;
typedef int uint64_t ;
typedef int spa_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int ztest_checkpoint_lock ;
 scalar_t__ ztest_random (int) ;
 int * ztest_spa ;
 int ztest_spa_checkpoint (int *) ;
 int ztest_spa_discard_checkpoint (int *) ;

void
ztest_spa_checkpoint_create_discard(ztest_ds_t *zd, uint64_t id)
{
 spa_t *spa = ztest_spa;

 mutex_enter(&ztest_checkpoint_lock);
 if (ztest_random(2) == 0) {
  ztest_spa_checkpoint(spa);
 } else {
  ztest_spa_discard_checkpoint(spa);
 }
 mutex_exit(&ztest_checkpoint_lock);
}
