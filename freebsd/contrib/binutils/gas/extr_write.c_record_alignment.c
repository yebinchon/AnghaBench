
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ segT ;


 scalar_t__ absolute_section ;
 unsigned int bfd_get_section_alignment (int ,scalar_t__) ;
 int bfd_set_section_alignment (int ,scalar_t__,int) ;
 int stdoutput ;

void
record_alignment (
    segT seg,


    int align)
{
  if (seg == absolute_section)
    return;

  if ((unsigned int) align > bfd_get_section_alignment (stdoutput, seg))
    (void) bfd_set_section_alignment (stdoutput, seg, align);
}
