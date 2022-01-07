
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_name; } ;
typedef TYPE_1__ spa_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;


 int fatal (int ,char*,int ,int) ;
 int spa_checkpoint_discard (int ) ;
 int ztest_checkpoint_lock ;

__attribute__((used)) static void
ztest_spa_discard_checkpoint(spa_t *spa)
{
 ASSERT(MUTEX_HELD(&ztest_checkpoint_lock));

 int error = spa_checkpoint_discard(spa->spa_name);

 switch (error) {
 case 0:
 case 129:
 case 128:
  break;
 default:
  fatal(0, "spa_discard_checkpoint(%s) = %d",
      spa->spa_name, error);
 }

}
