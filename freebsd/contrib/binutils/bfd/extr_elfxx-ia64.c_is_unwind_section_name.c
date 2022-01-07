
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {int xvec; } ;
typedef TYPE_1__ bfd ;


 scalar_t__ CONST_STRNEQ (char const*,int ) ;
 int ELF_STRING_ia64_unwind ;
 int ELF_STRING_ia64_unwind_hdr ;
 int ELF_STRING_ia64_unwind_info ;
 int ELF_STRING_ia64_unwind_once ;
 int FALSE ;
 scalar_t__ elfNN_ia64_hpux_vec (int ) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static inline bfd_boolean
is_unwind_section_name (bfd *abfd, const char *name)
{
  if (elfNN_ia64_hpux_vec (abfd->xvec)
      && !strcmp (name, ELF_STRING_ia64_unwind_hdr))
    return FALSE;

  return ((CONST_STRNEQ (name, ELF_STRING_ia64_unwind)
    && ! CONST_STRNEQ (name, ELF_STRING_ia64_unwind_info))
   || CONST_STRNEQ (name, ELF_STRING_ia64_unwind_once));
}
