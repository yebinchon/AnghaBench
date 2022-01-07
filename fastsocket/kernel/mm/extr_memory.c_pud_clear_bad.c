
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;


 int pud_ERROR (int ) ;
 int pud_clear (int *) ;

void pud_clear_bad(pud_t *pud)
{
 pud_ERROR(*pud);
 pud_clear(pud);
}
