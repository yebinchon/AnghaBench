
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int list; } ;


 int down_write (int *) ;
 int list_del (int *) ;
 int shrinker_rwsem ;
 int up_write (int *) ;

void unregister_shrinker(struct shrinker *shrinker)
{
 down_write(&shrinker_rwsem);
 list_del(&shrinker->list);
 up_write(&shrinker_rwsem);
}
