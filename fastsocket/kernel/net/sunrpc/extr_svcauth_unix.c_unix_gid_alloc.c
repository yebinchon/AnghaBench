
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct unix_gid {struct cache_head h; } ;


 int GFP_KERNEL ;
 struct unix_gid* kmalloc (int,int ) ;

__attribute__((used)) static struct cache_head *unix_gid_alloc(void)
{
 struct unix_gid *g = kmalloc(sizeof(*g), GFP_KERNEL);
 if (g)
  return &g->h;
 else
  return ((void*)0);
}
