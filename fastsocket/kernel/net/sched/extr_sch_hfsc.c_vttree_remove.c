
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfsc_class {TYPE_1__* cl_parent; int vt_node; } ;
struct TYPE_2__ {int vt_tree; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void
vttree_remove(struct hfsc_class *cl)
{
 rb_erase(&cl->vt_node, &cl->cl_parent->vt_tree);
}
