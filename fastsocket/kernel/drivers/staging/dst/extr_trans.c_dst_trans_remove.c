
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_trans {struct dst_node* n; } ;
struct dst_node {int trans_lock; } ;


 int dst_trans_remove_nolock (struct dst_trans*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int dst_trans_remove(struct dst_trans *t)
{
 int ret;
 struct dst_node *n = t->n;

 mutex_lock(&n->trans_lock);
 ret = dst_trans_remove_nolock(t);
 mutex_unlock(&n->trans_lock);

 return ret;
}
