
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; } ;


 int IDR_BITS ;
 int IDR_MASK ;
 int MAX_LEVEL ;
 int fls (int) ;
 int free_layer (struct idr_layer*) ;
 int rcu_assign_pointer (struct idr_layer*,int *) ;

void idr_remove_all(struct idr *idp)
{
 int n, id, max;
 struct idr_layer *p;
 struct idr_layer *pa[MAX_LEVEL];
 struct idr_layer **paa = &pa[0];

 n = idp->layers * IDR_BITS;
 p = idp->top;
 rcu_assign_pointer(idp->top, ((void*)0));
 max = 1 << n;

 id = 0;
 while (id < max) {
  while (n > IDR_BITS && p) {
   n -= IDR_BITS;
   *paa++ = p;
   p = p->ary[(id >> n) & IDR_MASK];
  }

  id += 1 << n;
  while (n < fls(id)) {
   if (p)
    free_layer(p);
   n += IDR_BITS;
   p = *--paa;
  }
 }
 idp->layers = 0;
}
