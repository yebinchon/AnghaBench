
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xen_hvm_param {int value; int index; int domid; } ;


 int DOMID_SELF ;
 int HVMOP_set_param ;
 int HVM_PARAM_CALLBACK_IRQ ;
 int HYPERVISOR_hvm_op (int ,struct xen_hvm_param*) ;

int xen_set_callback_via(uint64_t via)
{
 struct xen_hvm_param a;
 a.domid = DOMID_SELF;
 a.index = HVM_PARAM_CALLBACK_IRQ;
 a.value = via;
 return HYPERVISOR_hvm_op(HVMOP_set_param, &a);
}
