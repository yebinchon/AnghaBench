
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef scalar_t__ segT ;


 scalar_t__ text_section ;

valueT
md_section_align (segT seg, valueT val)
{

  if (seg == text_section)
    return (val + 1) & ~1;
  return val;
}
