
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int count; int * ary; } ;
struct idr {int dummy; } ;


 int IDR_MASK ;
 int MAX_LEVEL ;
 int idr_get_empty_slot (struct idr*,int,struct idr_layer**) ;
 int idr_mark_full (struct idr_layer**,int) ;
 int rcu_assign_pointer (int ,struct idr_layer*) ;

__attribute__((used)) static int idr_get_new_above_int(struct idr *idp, void *ptr, int starting_id)
{
 struct idr_layer *pa[MAX_LEVEL];
 int id;

 id = idr_get_empty_slot(idp, starting_id, pa);
 if (id >= 0) {




  rcu_assign_pointer(pa[0]->ary[id & IDR_MASK],
    (struct idr_layer *)ptr);
  pa[0]->count++;
  idr_mark_full(pa, id);
 }

 return id;
}
