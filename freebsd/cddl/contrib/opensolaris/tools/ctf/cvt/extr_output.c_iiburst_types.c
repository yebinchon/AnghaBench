
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tdtrav_data_t ;
struct TYPE_6__ {TYPE_1__* iib_td; int * iib_tdtd; } ;
typedef TYPE_2__ iiburst_t ;
struct TYPE_5__ {int td_iihash; int td_curvgen; } ;


 int burst_iitypes ;
 int burst_types_cbs ;
 int hash_iter (int ,int ,TYPE_2__*) ;
 int tdtrav_init (int *,int *,int *,int ,int *,void*) ;

__attribute__((used)) static void
iiburst_types(iiburst_t *iiburst)
{
 tdtrav_data_t tdtd;

 tdtrav_init(&tdtd, &iiburst->iib_td->td_curvgen, ((void*)0), burst_types_cbs,
     ((void*)0), (void *)iiburst);

 iiburst->iib_tdtd = &tdtd;

 (void) hash_iter(iiburst->iib_td->td_iihash, burst_iitypes, iiburst);
}
