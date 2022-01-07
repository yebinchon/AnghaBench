
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct ent {struct cache_head h; } ;


 int GFP_KERNEL ;
 struct ent* kmalloc (int,int ) ;

__attribute__((used)) static struct cache_head *
ent_alloc(void)
{
 struct ent *e = kmalloc(sizeof(*e), GFP_KERNEL);
 if (e)
  return &e->h;
 else
  return ((void*)0);
}
