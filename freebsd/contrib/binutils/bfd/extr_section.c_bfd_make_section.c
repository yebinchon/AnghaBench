
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asection ;


 int * bfd_make_section_with_flags (int *,char const*,int ) ;

asection *
bfd_make_section (bfd *abfd, const char *name)
{
  return bfd_make_section_with_flags (abfd, name, 0);
}
