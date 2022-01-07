
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int fputs (char*,int *) ;
 int gcc_assert (int) ;
 int output_addr_const (int *,int ) ;

__attribute__((used)) static void
ia64_output_dwarf_dtprel (FILE *file, int size, rtx x)
{
  gcc_assert (size == 4 || size == 8);
  if (size == 4)
    fputs ("\tdata4.ua\t@dtprel(", file);
  else
    fputs ("\tdata8.ua\t@dtprel(", file);
  output_addr_const (file, x);
  fputs (")", file);
}
