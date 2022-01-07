
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int flagword ;
typedef int bfd_target ;
struct TYPE_11__ {void* any; } ;
struct TYPE_12__ {int const* xvec; TYPE_1__ tdata; int symcount; scalar_t__ target_defaulted; } ;
typedef TYPE_2__ bfd ;
struct TYPE_13__ {scalar_t__ filepos; int size; scalar_t__ vma; } ;
typedef TYPE_3__ asection ;
struct TYPE_14__ {scalar_t__ arch; } ;


 int BIN_SYMS ;
 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 scalar_t__ bfd_arch_unknown ;
 int bfd_error_system_call ;
 int bfd_error_wrong_format ;
 scalar_t__ bfd_external_binary_architecture ;
 int bfd_external_machine ;
 TYPE_9__* bfd_get_arch_info (TYPE_2__*) ;
 int bfd_lookup_arch (scalar_t__,int ) ;
 TYPE_3__* bfd_make_section_with_flags (TYPE_2__*,char*,int) ;
 int bfd_set_arch_info (TYPE_2__*,int ) ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_stat (TYPE_2__*,struct stat*) ;

__attribute__((used)) static const bfd_target *
binary_object_p (bfd *abfd)
{
  struct stat statbuf;
  asection *sec;
  flagword flags;

  if (abfd->target_defaulted)
    {
      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }

  abfd->symcount = BIN_SYMS;


  if (bfd_stat (abfd, &statbuf) < 0)
    {
      bfd_set_error (bfd_error_system_call);
      return ((void*)0);
    }


  flags = SEC_ALLOC | SEC_LOAD | SEC_DATA | SEC_HAS_CONTENTS;
  sec = bfd_make_section_with_flags (abfd, ".data", flags);
  if (sec == ((void*)0))
    return ((void*)0);
  sec->vma = 0;
  sec->size = statbuf.st_size;
  sec->filepos = 0;

  abfd->tdata.any = (void *) sec;

  if (bfd_get_arch_info (abfd) != ((void*)0))
    {
      if ((bfd_get_arch_info (abfd)->arch == bfd_arch_unknown)
          && (bfd_external_binary_architecture != bfd_arch_unknown))
        bfd_set_arch_info (abfd, bfd_lookup_arch
      (bfd_external_binary_architecture, bfd_external_machine));
    }

  return abfd->xvec;
}
