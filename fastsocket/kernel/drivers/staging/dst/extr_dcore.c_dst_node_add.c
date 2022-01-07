
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_node {int node_entry; int name; } ;


 unsigned int dst_hash (int ,int) ;
 int dst_hash_lock ;
 int * dst_hashtable ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dst_node_add(struct dst_node *n)
{
 unsigned hash = dst_hash(n->name, sizeof(n->name));

 mutex_lock(&dst_hash_lock);
 list_add_tail(&n->node_entry, &dst_hashtable[hash]);
 mutex_unlock(&dst_hash_lock);
}
