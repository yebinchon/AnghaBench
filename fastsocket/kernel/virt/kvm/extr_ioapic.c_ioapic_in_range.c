
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ioapic {scalar_t__ base_address; } ;
typedef scalar_t__ gpa_t ;


 scalar_t__ IOAPIC_MEM_LENGTH ;

__attribute__((used)) static inline int ioapic_in_range(struct kvm_ioapic *ioapic, gpa_t addr)
{
 return ((addr >= ioapic->base_address &&
   (addr < ioapic->base_address + IOAPIC_MEM_LENGTH)));
}
