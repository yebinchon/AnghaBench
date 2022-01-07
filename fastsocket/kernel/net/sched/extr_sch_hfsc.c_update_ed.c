
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {scalar_t__ cl_cumul; int cl_deadline; void* cl_d; int cl_eligible; void* cl_e; } ;


 int eltree_update (struct hfsc_class*) ;
 void* rtsc_y2x (int *,scalar_t__) ;

__attribute__((used)) static void
update_ed(struct hfsc_class *cl, unsigned int next_len)
{
 cl->cl_e = rtsc_y2x(&cl->cl_eligible, cl->cl_cumul);
 cl->cl_d = rtsc_y2x(&cl->cl_deadline, cl->cl_cumul + next_len);

 eltree_update(cl);
}
