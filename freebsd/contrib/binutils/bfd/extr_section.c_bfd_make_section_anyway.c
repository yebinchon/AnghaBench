
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sec_ptr ;
typedef int bfd ;


 int bfd_make_section_anyway_with_flags (int *,char const*,int ) ;

sec_ptr
bfd_make_section_anyway (bfd *abfd, const char *name)
{
  return bfd_make_section_anyway_with_flags (abfd, name, 0);
}
