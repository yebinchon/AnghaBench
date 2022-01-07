
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int dummy; } ;


 int cftree_insert (struct hfsc_class*) ;
 int cftree_remove (struct hfsc_class*) ;

__attribute__((used)) static inline void
cftree_update(struct hfsc_class *cl)
{
 cftree_remove(cl);
 cftree_insert(cl);
}
