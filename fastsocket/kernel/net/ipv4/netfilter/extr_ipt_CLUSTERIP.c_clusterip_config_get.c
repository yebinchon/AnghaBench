
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clusterip_config {int refcount; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
clusterip_config_get(struct clusterip_config *c)
{
 atomic_inc(&c->refcount);
}
