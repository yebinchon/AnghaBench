
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ SUBREG ;
 int copy_replacements_1 (int *,int *,int ) ;
 int gcc_assert (int) ;
 int n_replacements ;

void
copy_replacements (rtx x, rtx y)
{


  gcc_assert (GET_CODE (x) != SUBREG);

  copy_replacements_1 (&x, &y, n_replacements);
}
