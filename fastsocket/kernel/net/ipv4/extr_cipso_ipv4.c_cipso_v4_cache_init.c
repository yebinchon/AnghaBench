
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct cipso_v4_map_cache_bkt {int dummy; } ;
struct TYPE_3__ {int list; scalar_t__ size; int lock; } ;


 size_t CIPSO_V4_CACHE_BUCKETS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* cipso_v4_cache ;
 TYPE_1__* kcalloc (size_t,int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int cipso_v4_cache_init(void)
{
 u32 iter;

 cipso_v4_cache = kcalloc(CIPSO_V4_CACHE_BUCKETS,
     sizeof(struct cipso_v4_map_cache_bkt),
     GFP_KERNEL);
 if (cipso_v4_cache == ((void*)0))
  return -ENOMEM;

 for (iter = 0; iter < CIPSO_V4_CACHE_BUCKETS; iter++) {
  spin_lock_init(&cipso_v4_cache[iter].lock);
  cipso_v4_cache[iter].size = 0;
  INIT_LIST_HEAD(&cipso_v4_cache[iter].list);
 }

 return 0;
}
