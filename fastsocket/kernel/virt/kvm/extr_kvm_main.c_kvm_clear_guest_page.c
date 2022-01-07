
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int gfn_t ;


 int empty_zero_page ;
 int kvm_write_guest_page (struct kvm*,int ,int ,int,int) ;

int kvm_clear_guest_page(struct kvm *kvm, gfn_t gfn, int offset, int len)
{
 return kvm_write_guest_page(kvm, gfn, empty_zero_page, offset, len);
}
