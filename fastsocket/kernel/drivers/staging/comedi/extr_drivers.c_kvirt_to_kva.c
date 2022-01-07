
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pgd_offset_k (unsigned long) ;
 unsigned long uvirt_to_kva (int ,unsigned long) ;

__attribute__((used)) static inline unsigned long kvirt_to_kva(unsigned long adr)
{
 unsigned long va, kva;

 va = adr;
 kva = uvirt_to_kva(pgd_offset_k(va), va);

 return kva;
}
