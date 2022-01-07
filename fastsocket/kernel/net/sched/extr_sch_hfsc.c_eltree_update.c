
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int dummy; } ;


 int eltree_insert (struct hfsc_class*) ;
 int eltree_remove (struct hfsc_class*) ;

__attribute__((used)) static inline void
eltree_update(struct hfsc_class *cl)
{
 eltree_remove(cl);
 eltree_insert(cl);
}
