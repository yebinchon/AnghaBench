
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct rsi {struct cache_head h; } ;


 int GFP_KERNEL ;
 struct rsi* kmalloc (int,int ) ;

__attribute__((used)) static struct cache_head *rsi_alloc(void)
{
 struct rsi *rsii = kmalloc(sizeof(*rsii), GFP_KERNEL);
 if (rsii)
  return &rsii->h;
 else
  return ((void*)0);
}
