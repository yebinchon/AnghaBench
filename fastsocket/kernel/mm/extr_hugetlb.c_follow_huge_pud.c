
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;


 int BUG () ;

__attribute__((weak)) struct page *
follow_huge_pud(struct mm_struct *mm, unsigned long address,
        pud_t *pud, int write)
{
 BUG();
 return ((void*)0);
}
