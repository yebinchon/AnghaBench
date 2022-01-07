
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ segT ;


 scalar_t__ absolute_section ;
 int bfd_get_section_alignment (int ,scalar_t__) ;
 int stdoutput ;

int
get_recorded_alignment (segT seg)
{
  if (seg == absolute_section)
    return 0;

  return bfd_get_section_alignment (stdoutput, seg);
}
