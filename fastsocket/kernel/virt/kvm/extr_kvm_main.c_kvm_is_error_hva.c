
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long bad_hva () ;

int kvm_is_error_hva(unsigned long addr)
{
 return addr == bad_hva();
}
