
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {TYPE_1__* xceiv; } ;
struct TYPE_2__ {int state; } ;
const char *otg_state_string(struct musb *musb)
{
 switch (musb->xceiv->state) {
 case 139: return "a_idle";
 case 133: return "a_wait_vrise";
 case 135: return "a_wait_bcon";
 case 140: return "a_host";
 case 137: return "a_suspend";
 case 138: return "a_peripheral";
 case 134: return "a_wait_vfall";
 case 136: return "a_vbus_err";
 case 131: return "b_idle";
 case 129: return "b_srp_init";
 case 130: return "b_peripheral";
 case 128: return "b_wait_acon";
 case 132: return "b_host";
 default: return "UNDEFINED";
 }
}
