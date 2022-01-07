
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef int file_ptr ;
typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_10__ {TYPE_3__* sections; int output_has_begun; } ;
typedef TYPE_2__ bfd ;
struct TYPE_11__ {int flags; int vma; int size; struct TYPE_11__* next; } ;
typedef TYPE_3__ asection ;
struct TYPE_9__ {int flags; } ;


 scalar_t__ CHUNK_MASK ;
 int FALSE ;
 int SEC_ALLOC ;
 int SEC_LOAD ;
 int TRUE ;
 int find_chunk (TYPE_2__*,int) ;
 int move_section_contents (TYPE_2__*,TYPE_1__*,void const*,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
tekhex_set_section_contents (bfd *abfd,
        sec_ptr section,
        const void * locationp,
        file_ptr offset,
        bfd_size_type bytes_to_do)
{
  if (! abfd->output_has_begun)
    {

      asection *s = abfd->sections;
      bfd_vma vma;

      for (s = abfd->sections; s; s = s->next)
 {
   if (s->flags & SEC_LOAD)
     {
       for (vma = s->vma & ~(bfd_vma) CHUNK_MASK;
     vma < s->vma + s->size;
     vma += CHUNK_MASK)
  find_chunk (abfd, vma);
     }
 }
    }

  if (section->flags & (SEC_LOAD | SEC_ALLOC))
    {
      move_section_contents (abfd, section, locationp, offset, bytes_to_do,
        FALSE);
      return TRUE;
    }

  return FALSE;
}
