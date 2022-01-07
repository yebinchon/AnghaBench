
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
typedef int pte_t ;


 scalar_t__ huge_pte_none (int ) ;
 scalar_t__ is_hwpoison_entry (int ) ;
 scalar_t__ non_swap_entry (int ) ;
 scalar_t__ pte_present (int ) ;
 int pte_to_swp_entry (int ) ;

__attribute__((used)) static int is_hugetlb_entry_hwpoisoned(pte_t pte)
{
 swp_entry_t swp;

 if (huge_pte_none(pte) || pte_present(pte))
  return 0;
 swp = pte_to_swp_entry(pte);
 if (non_swap_entry(swp) && is_hwpoison_entry(swp)) {
  return 1;
 } else
  return 0;
}
