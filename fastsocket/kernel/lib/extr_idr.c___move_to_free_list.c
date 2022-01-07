
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {struct idr_layer** ary; } ;
struct idr {int id_free_cnt; struct idr_layer* id_free; } ;



__attribute__((used)) static void __move_to_free_list(struct idr *idp, struct idr_layer *p)
{
 p->ary[0] = idp->id_free;
 idp->id_free = p;
 idp->id_free_cnt++;
}
