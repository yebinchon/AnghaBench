
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct elf_backend_data {int (* elf_backend_additional_program_headers ) (TYPE_2__*,struct bfd_link_info*) ;TYPE_1__* s; } ;
struct bfd_link_info {int dummy; } ;
typedef size_t bfd_size_type ;
struct TYPE_12__ {TYPE_3__* sections; } ;
typedef TYPE_2__ bfd ;
struct TYPE_13__ {int flags; struct TYPE_13__* next; int name; } ;
typedef TYPE_3__ asection ;
struct TYPE_14__ {scalar_t__ stack_flags; scalar_t__ eh_frame_hdr; scalar_t__ relro; } ;
struct TYPE_11__ {size_t sizeof_phdr; } ;


 scalar_t__ CONST_STRNEQ (int ,char*) ;
 int SEC_LOAD ;
 int SEC_THREAD_LOCAL ;
 int abort () ;
 TYPE_3__* bfd_get_section_by_name (TYPE_2__*,char*) ;
 TYPE_7__* elf_tdata (TYPE_2__*) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_2__*) ;
 int stub1 (TYPE_2__*,struct bfd_link_info*) ;

__attribute__((used)) static bfd_size_type
get_program_header_size (bfd *abfd, struct bfd_link_info *info)
{
  size_t segs;
  asection *s;
  const struct elf_backend_data *bed;



  segs = 2;

  s = bfd_get_section_by_name (abfd, ".interp");
  if (s != ((void*)0) && (s->flags & SEC_LOAD) != 0)
    {




      segs += 2;
    }

  if (bfd_get_section_by_name (abfd, ".dynamic") != ((void*)0))
    {

      ++segs;

      if (elf_tdata (abfd)->relro)
 {


   ++segs;
 }
    }

  if (elf_tdata (abfd)->eh_frame_hdr)
    {

      ++segs;
    }

  if (elf_tdata (abfd)->stack_flags)
    {

      ++segs;
    }

  for (s = abfd->sections; s != ((void*)0); s = s->next)
    {
      if ((s->flags & SEC_LOAD) != 0
   && CONST_STRNEQ (s->name, ".note"))
 {

   ++segs;
 }
    }

  for (s = abfd->sections; s != ((void*)0); s = s->next)
    {
      if (s->flags & SEC_THREAD_LOCAL)
 {

   ++segs;
   break;
 }
    }


  bed = get_elf_backend_data (abfd);
  if (bed->elf_backend_additional_program_headers)
    {
      int a;

      a = (*bed->elf_backend_additional_program_headers) (abfd, info);
      if (a == -1)
 abort ();
      segs += a;
    }

  return segs * bed->s->sizeof_phdr;
}
