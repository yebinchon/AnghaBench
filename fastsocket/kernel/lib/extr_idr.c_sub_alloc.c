
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {unsigned long bitmap; int layer; struct idr_layer** ary; int count; } ;
struct idr {int layers; struct idr_layer* top; } ;


 int BUG_ON (int) ;
 int IDR_BITS ;
 int IDR_MASK ;
 int IDR_NEED_TO_GROW ;
 int IDR_NOMORE_SPACE ;
 int IDR_SIZE ;
 int MAX_ID_BIT ;
 int find_next_bit (unsigned long*,int,int) ;
 struct idr_layer* get_from_free_list (struct idr*) ;
 int rcu_assign_pointer (struct idr_layer*,struct idr_layer*) ;

__attribute__((used)) static int sub_alloc(struct idr *idp, int *starting_id, struct idr_layer **pa)
{
 int n, m, sh;
 struct idr_layer *p, *new;
 int l, id, oid;
 unsigned long bm;

 id = *starting_id;
 restart:
 p = idp->top;
 l = idp->layers;
 pa[l--] = ((void*)0);
 while (1) {



  n = (id >> (IDR_BITS*l)) & IDR_MASK;
  bm = ~p->bitmap;
  m = find_next_bit(&bm, IDR_SIZE, n);
  if (m == IDR_SIZE) {

   l++;
   oid = id;
   id = (id | ((1 << (IDR_BITS * l)) - 1)) + 1;


   if (id >= 1 << (idp->layers * IDR_BITS)) {
    *starting_id = id;
    return IDR_NEED_TO_GROW;
   }
   p = pa[l];
   BUG_ON(!p);




   sh = IDR_BITS * (l + 1);
   if (oid >> sh == id >> sh)
    continue;
   else
    goto restart;
  }
  if (m != n) {
   sh = IDR_BITS*l;
   id = ((id >> sh) ^ n ^ m) << sh;
  }
  if ((id >= MAX_ID_BIT) || (id < 0))
   return IDR_NOMORE_SPACE;
  if (l == 0)
   break;



  if (!p->ary[m]) {
   new = get_from_free_list(idp);
   if (!new)
    return -1;
   new->layer = l-1;
   rcu_assign_pointer(p->ary[m], new);
   p->count++;
  }
  pa[l--] = p;
  p = p->ary[m];
 }

 pa[l] = p;
 return id;
}
