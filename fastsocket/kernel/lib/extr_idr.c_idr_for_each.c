
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int * ary; } ;
struct idr {int layers; int top; } ;


 int IDR_BITS ;
 int IDR_MASK ;
 int MAX_LEVEL ;
 int fls (int) ;
 struct idr_layer* rcu_dereference (int ) ;

int idr_for_each(struct idr *idp,
   int (*fn)(int id, void *p, void *data), void *data)
{
 int n, id, max, error = 0;
 struct idr_layer *p;
 struct idr_layer *pa[MAX_LEVEL];
 struct idr_layer **paa = &pa[0];

 n = idp->layers * IDR_BITS;
 p = rcu_dereference(idp->top);
 max = 1 << n;

 id = 0;
 while (id < max) {
  while (n > 0 && p) {
   n -= IDR_BITS;
   *paa++ = p;
   p = rcu_dereference(p->ary[(id >> n) & IDR_MASK]);
  }

  if (p) {
   error = fn(id, (void *)p, data);
   if (error)
    break;
  }

  id += 1 << n;
  while (n < fls(id)) {
   n += IDR_BITS;
   p = *--paa;
  }
 }

 return error;
}
