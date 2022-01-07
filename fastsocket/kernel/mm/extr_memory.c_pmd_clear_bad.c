
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int pmd_ERROR (int ) ;
 int pmd_clear (int *) ;

void pmd_clear_bad(pmd_t *pmd)
{
 pmd_ERROR(*pmd);
 pmd_clear(pmd);
}
