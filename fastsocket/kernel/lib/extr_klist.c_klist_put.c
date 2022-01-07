
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;
struct klist {void (* put ) (struct klist_node*) ;int k_lock; } ;


 int klist_dec_and_del (struct klist_node*) ;
 int knode_kill (struct klist_node*) ;
 struct klist* knode_klist (struct klist_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void klist_put(struct klist_node *n, bool kill)
{
 struct klist *k = knode_klist(n);
 void (*put)(struct klist_node *) = k->put;

 spin_lock(&k->k_lock);
 if (kill)
  knode_kill(n);
 if (!klist_dec_and_del(n))
  put = ((void*)0);
 spin_unlock(&k->k_lock);
 if (put)
  put(n);
}
