
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int cl_flags; int dlist; } ;


 int HFSC_RSC ;
 int eltree_remove (struct hfsc_class*) ;
 int list_del (int *) ;

__attribute__((used)) static void
set_passive(struct hfsc_class *cl)
{
 if (cl->cl_flags & HFSC_RSC)
  eltree_remove(cl);

 list_del(&cl->dlist);





}
