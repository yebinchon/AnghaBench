
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
struct TYPE_8__ {TYPE_3__* sections; } ;
typedef TYPE_2__ bfd ;
struct TYPE_9__ {int flags; scalar_t__ output_offset; TYPE_1__* output_section; struct TYPE_9__* next; } ;
typedef TYPE_3__ asection ;
struct TYPE_7__ {scalar_t__ vma; } ;


 int SEC_ALLOC ;
 int SEC_READONLY ;
 int SEC_SMALL_DATA ;
 TYPE_3__* bfd_get_section_by_name (TYPE_2__*,char*) ;

bfd_vma
ppc64_elf_toc (bfd *obfd)
{
  asection *s;
  bfd_vma TOCstart;



  s = bfd_get_section_by_name (obfd, ".got");
  if (s == ((void*)0))
    s = bfd_get_section_by_name (obfd, ".toc");
  if (s == ((void*)0))
    s = bfd_get_section_by_name (obfd, ".tocbss");
  if (s == ((void*)0))
    s = bfd_get_section_by_name (obfd, ".plt");
  if (s == ((void*)0))
    {
      for (s = obfd->sections; s != ((void*)0); s = s->next)
 if ((s->flags & (SEC_ALLOC | SEC_SMALL_DATA | SEC_READONLY))
     == (SEC_ALLOC | SEC_SMALL_DATA))
   break;
      if (s == ((void*)0))
 for (s = obfd->sections; s != ((void*)0); s = s->next)
   if ((s->flags & (SEC_ALLOC | SEC_SMALL_DATA))
       == (SEC_ALLOC | SEC_SMALL_DATA))
     break;
      if (s == ((void*)0))
 for (s = obfd->sections; s != ((void*)0); s = s->next)
   if ((s->flags & (SEC_ALLOC | SEC_READONLY)) == SEC_ALLOC)
     break;
      if (s == ((void*)0))
 for (s = obfd->sections; s != ((void*)0); s = s->next)
   if ((s->flags & SEC_ALLOC) == SEC_ALLOC)
     break;
    }

  TOCstart = 0;
  if (s != ((void*)0))
    TOCstart = s->output_section->vma + s->output_offset;

  return TOCstart;
}
