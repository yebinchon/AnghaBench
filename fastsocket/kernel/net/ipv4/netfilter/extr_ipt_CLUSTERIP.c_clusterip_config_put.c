
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clusterip_config {int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct clusterip_config*) ;

__attribute__((used)) static inline void
clusterip_config_put(struct clusterip_config *c)
{
 if (atomic_dec_and_test(&c->refcount))
  kfree(c);
}
