
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_2__ {int zo_verbose; } ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int printf (char*,char*) ;
 char* spa_name (int *) ;
 int spa_namespace_lock ;
 int * spa_next (int *) ;
 TYPE_1__ ztest_opts ;

__attribute__((used)) static void
ztest_walk_pool_directory(char *header)
{
 spa_t *spa = ((void*)0);

 if (ztest_opts.zo_verbose >= 6)
  (void) printf("%s\n", header);

 mutex_enter(&spa_namespace_lock);
 while ((spa = spa_next(spa)) != ((void*)0))
  if (ztest_opts.zo_verbose >= 6)
   (void) printf("\t%s\n", spa_name(spa));
 mutex_exit(&spa_namespace_lock);
}
