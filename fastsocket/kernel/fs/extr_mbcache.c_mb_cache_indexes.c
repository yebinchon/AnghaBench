
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache {int c_indexes_count; } ;


 int MB_CACHE_INDEXES_COUNT ;

__attribute__((used)) static inline int
mb_cache_indexes(struct mb_cache *cache)
{



 return cache->c_indexes_count;

}
