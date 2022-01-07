
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clusterip_config {int entries; int refcount; } ;
typedef int __be32 ;


 struct clusterip_config* __clusterip_config_find (int ) ;
 int atomic_inc (int *) ;
 int clusterip_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static inline struct clusterip_config *
clusterip_config_find_get(__be32 clusterip, int entry)
{
 struct clusterip_config *c;

 read_lock_bh(&clusterip_lock);
 c = __clusterip_config_find(clusterip);
 if (!c) {
  read_unlock_bh(&clusterip_lock);
  return ((void*)0);
 }
 atomic_inc(&c->refcount);
 if (entry)
  atomic_inc(&c->entries);
 read_unlock_bh(&clusterip_lock);

 return c;
}
