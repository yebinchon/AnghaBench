
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct cpu_rmap {scalar_t__ used; scalar_t__ size; void** obj; } ;


 int BUG_ON (int) ;

int cpu_rmap_add(struct cpu_rmap *rmap, void *obj)
{
 u16 index;

 BUG_ON(rmap->used >= rmap->size);
 index = rmap->used++;
 rmap->obj[index] = obj;
 return index;
}
