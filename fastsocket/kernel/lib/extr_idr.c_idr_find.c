
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int layer; int * ary; } ;
struct idr {int top; } ;


 int BUG_ON (int) ;
 int IDR_BITS ;
 int IDR_MASK ;
 int MAX_ID_MASK ;
 struct idr_layer* rcu_dereference (int ) ;

void *idr_find(struct idr *idp, int id)
{
 int n;
 struct idr_layer *p;

 p = rcu_dereference(idp->top);
 if (!p)
  return ((void*)0);
 n = (p->layer+1) * IDR_BITS;


 id &= MAX_ID_MASK;

 if (id >= (1 << n))
  return ((void*)0);
 BUG_ON(n == 0);

 while (n > 0 && p) {
  n -= IDR_BITS;
  BUG_ON(n != p->layer*IDR_BITS);
  p = rcu_dereference(p->ary[(id >> n) & IDR_MASK]);
 }
 return((void *)p);
}
