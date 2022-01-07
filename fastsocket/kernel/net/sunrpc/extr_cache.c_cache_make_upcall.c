
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct cache_detail {int (* cache_upcall ) (struct cache_detail*,struct cache_head*) ;} ;


 int EINVAL ;
 int stub1 (struct cache_detail*,struct cache_head*) ;

__attribute__((used)) static int cache_make_upcall(struct cache_detail *cd, struct cache_head *h)
{
 if (!cd->cache_upcall)
  return -EINVAL;
 return cd->cache_upcall(cd, h);
}
