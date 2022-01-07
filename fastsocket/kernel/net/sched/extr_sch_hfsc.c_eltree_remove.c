
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfsc_class {TYPE_1__* sched; int el_node; } ;
struct TYPE_2__ {int eligible; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void
eltree_remove(struct hfsc_class *cl)
{
 rb_erase(&cl->el_node, &cl->sched->eligible);
}
