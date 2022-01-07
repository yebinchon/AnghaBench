
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct rsc {struct cache_head h; } ;


 int GFP_KERNEL ;
 struct rsc* kmalloc (int,int ) ;

__attribute__((used)) static struct cache_head *
rsc_alloc(void)
{
 struct rsc *rsci = kmalloc(sizeof(*rsci), GFP_KERNEL);
 if (rsci)
  return &rsci->h;
 else
  return ((void*)0);
}
