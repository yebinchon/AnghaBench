
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int cl_flags; int cl_usc; int cl_ulimit; int cl_fsc; int cl_virtual; int cl_rsc; int cl_deadline; int qdisc; void* cf_tree; void* vt_tree; scalar_t__ cl_nactive; scalar_t__ cl_cfmin; scalar_t__ cl_myfadj; scalar_t__ cl_myf; scalar_t__ cl_f; scalar_t__ cl_parentperiod; scalar_t__ cl_vtperiod; scalar_t__ cl_pcvtoff; scalar_t__ cl_cvtoff; scalar_t__ cl_cvtmax; scalar_t__ cl_cvtmin; scalar_t__ cl_vtoff; scalar_t__ cl_vtadj; scalar_t__ cl_vt; scalar_t__ cl_e; scalar_t__ cl_d; scalar_t__ cl_cumul; scalar_t__ cl_total; } ;


 int HFSC_FSC ;
 int HFSC_RSC ;
 int HFSC_USC ;
 void* RB_ROOT ;
 int qdisc_reset (int ) ;
 int rtsc_init (int *,int *,int ,int ) ;

__attribute__((used)) static void
hfsc_reset_class(struct hfsc_class *cl)
{
 cl->cl_total = 0;
 cl->cl_cumul = 0;
 cl->cl_d = 0;
 cl->cl_e = 0;
 cl->cl_vt = 0;
 cl->cl_vtadj = 0;
 cl->cl_vtoff = 0;
 cl->cl_cvtmin = 0;
 cl->cl_cvtmax = 0;
 cl->cl_cvtoff = 0;
 cl->cl_pcvtoff = 0;
 cl->cl_vtperiod = 0;
 cl->cl_parentperiod = 0;
 cl->cl_f = 0;
 cl->cl_myf = 0;
 cl->cl_myfadj = 0;
 cl->cl_cfmin = 0;
 cl->cl_nactive = 0;

 cl->vt_tree = RB_ROOT;
 cl->cf_tree = RB_ROOT;
 qdisc_reset(cl->qdisc);

 if (cl->cl_flags & HFSC_RSC)
  rtsc_init(&cl->cl_deadline, &cl->cl_rsc, 0, 0);
 if (cl->cl_flags & HFSC_FSC)
  rtsc_init(&cl->cl_virtual, &cl->cl_fsc, 0, 0);
 if (cl->cl_flags & HFSC_USC)
  rtsc_init(&cl->cl_ulimit, &cl->cl_usc, 0, 0);
}
