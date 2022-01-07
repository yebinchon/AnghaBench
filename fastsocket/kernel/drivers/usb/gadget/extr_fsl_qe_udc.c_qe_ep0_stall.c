
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qe_udc {int * eps; } ;
struct TYPE_2__ {scalar_t__ ep0_dir; int ep0_state; } ;


 int WAIT_FOR_SETUP ;
 int qe_eprx_stall_change (int *,int) ;
 int qe_eptx_stall_change (int *,int) ;
 TYPE_1__* udc_controller ;

__attribute__((used)) static int qe_ep0_stall(struct qe_udc *udc)
{
 qe_eptx_stall_change(&udc->eps[0], 1);
 qe_eprx_stall_change(&udc->eps[0], 1);
 udc_controller->ep0_state = WAIT_FOR_SETUP;
 udc_controller->ep0_dir = 0;
 return 0;
}
