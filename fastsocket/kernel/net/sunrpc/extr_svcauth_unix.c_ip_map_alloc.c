
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct ip_map {struct cache_head h; } ;


 int GFP_KERNEL ;
 struct ip_map* kmalloc (int,int ) ;

__attribute__((used)) static struct cache_head *ip_map_alloc(void)
{
 struct ip_map *i = kmalloc(sizeof(*i), GFP_KERNEL);
 if (i)
  return &i->h;
 else
  return ((void*)0);
}
