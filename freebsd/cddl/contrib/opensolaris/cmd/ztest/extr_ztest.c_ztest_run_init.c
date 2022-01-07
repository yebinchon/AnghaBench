
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ztest_shared_t ;
struct TYPE_2__ {int zo_init; int zo_verbose; } ;


 int ASSERT (int) ;
 int bzero (int *,int) ;
 int printf (char*,int) ;
 int remove (int ) ;
 int spa_config_path ;
 int ztest_init (int *) ;
 TYPE_1__ ztest_opts ;
 int * ztest_shared ;

__attribute__((used)) static void
ztest_run_init(void)
{
 ztest_shared_t *zs = ztest_shared;

 ASSERT(ztest_opts.zo_init != 0);




 (void) remove(spa_config_path);




 for (int i = 1; i <= ztest_opts.zo_init; i++) {
  bzero(zs, sizeof (ztest_shared_t));
  if (ztest_opts.zo_verbose >= 3 &&
      ztest_opts.zo_init != 1) {
   (void) printf("ztest_init(), pass %d\n", i);
  }
  ztest_init(zs);
 }
}
