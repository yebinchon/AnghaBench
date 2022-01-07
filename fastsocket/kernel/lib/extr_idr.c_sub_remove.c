
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int count; struct idr_layer** ary; int bitmap; } ;
struct idr {scalar_t__ layers; struct idr_layer* top; } ;


 scalar_t__ IDR_BITS ;
 int IDR_MASK ;
 int MAX_LEVEL ;
 int __clear_bit (int,int *) ;
 int free_layer (struct idr_layer*) ;
 int idr_remove_warning (int) ;
 scalar_t__ likely (int) ;
 int rcu_assign_pointer (struct idr_layer*,int *) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static void sub_remove(struct idr *idp, int shift, int id)
{
 struct idr_layer *p = idp->top;
 struct idr_layer **pa[MAX_LEVEL];
 struct idr_layer ***paa = &pa[0];
 struct idr_layer *to_free;
 int n;

 *paa = ((void*)0);
 *++paa = &idp->top;

 while ((shift > 0) && p) {
  n = (id >> shift) & IDR_MASK;
  __clear_bit(n, &p->bitmap);
  *++paa = &p->ary[n];
  p = p->ary[n];
  shift -= IDR_BITS;
 }
 n = id & IDR_MASK;
 if (likely(p != ((void*)0) && test_bit(n, &p->bitmap))){
  __clear_bit(n, &p->bitmap);
  rcu_assign_pointer(p->ary[n], ((void*)0));
  to_free = ((void*)0);
  while(*paa && ! --((**paa)->count)){
   if (to_free)
    free_layer(to_free);
   to_free = **paa;
   **paa-- = ((void*)0);
  }
  if (!*paa)
   idp->layers = 0;
  if (to_free)
   free_layer(to_free);
 } else
  idr_remove_warning(id);
}
