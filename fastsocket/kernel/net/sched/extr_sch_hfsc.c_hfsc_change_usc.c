
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tc_service_curve {int dummy; } ;
struct hfsc_class {int cl_flags; int cl_total; int cl_usc; int cl_ulimit; } ;


 int HFSC_USC ;
 int rtsc_init (int *,int *,int ,int ) ;
 int sc2isc (struct tc_service_curve*,int *) ;

__attribute__((used)) static void
hfsc_change_usc(struct hfsc_class *cl, struct tc_service_curve *usc,
  u64 cur_time)
{
 sc2isc(usc, &cl->cl_usc);
 rtsc_init(&cl->cl_ulimit, &cl->cl_usc, cur_time, cl->cl_total);
 cl->cl_flags |= HFSC_USC;
}
