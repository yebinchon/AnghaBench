
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int segT ;


 int bfd_get_section_alignment (int ,int ) ;
 int stdoutput ;

valueT
md_section_align (segT seg, valueT size)
{
  int align = bfd_get_section_alignment (stdoutput, seg);
  valueT mask = ((valueT) 1 << align) - 1;

  return (size + mask) & ~mask;
}
