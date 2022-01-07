
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_node {int node_entry; } ;


 int dst_hash_lock ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dst_node_remove(struct dst_node *n)
{
 mutex_lock(&dst_hash_lock);
 list_del_init(&n->node_entry);
 mutex_unlock(&dst_hash_lock);
}
