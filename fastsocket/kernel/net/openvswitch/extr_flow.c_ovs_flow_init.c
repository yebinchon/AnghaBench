
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow {int dummy; } ;


 int ENOMEM ;
 int * flow_cache ;
 int * kmem_cache_create (char*,int,int ,int ,int *) ;

int ovs_flow_init(void)
{
 flow_cache = kmem_cache_create("sw_flow", sizeof(struct sw_flow), 0,
     0, ((void*)0));
 if (flow_cache == ((void*)0))
  return -ENOMEM;

 return 0;
}
