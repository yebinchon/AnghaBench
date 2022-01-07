
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int list; scalar_t__ nr; } ;


 int down_write (int *) ;
 int list_add_tail (int *,int *) ;
 int shrinker_list ;
 int shrinker_rwsem ;
 int up_write (int *) ;

void register_shrinker(struct shrinker *shrinker)
{
 shrinker->nr = 0;
 down_write(&shrinker_rwsem);
 list_add_tail(&shrinker->list, &shrinker_list);
 up_write(&shrinker_rwsem);
}
