
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int dummy; } ;


 int vttree_insert (struct hfsc_class*) ;
 int vttree_remove (struct hfsc_class*) ;

__attribute__((used)) static inline void
vttree_update(struct hfsc_class *cl)
{
 vttree_remove(cl);
 vttree_insert(cl);
}
