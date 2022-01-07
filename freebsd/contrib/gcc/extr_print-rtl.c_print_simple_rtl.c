
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int flag_simple ;
 int print_rtl (int *,int ) ;

void
print_simple_rtl (FILE *outf, rtx x)
{
  flag_simple = 1;
  print_rtl (outf, x);
  flag_simple = 0;
}
