
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int __xfrm_garbage_collect (struct net*) ;
 int flow_cache_flush_deferred () ;

__attribute__((used)) static void xfrm_garbage_collect_deferred(struct net *net)
{
 flow_cache_flush_deferred();
 __xfrm_garbage_collect(net);
}
