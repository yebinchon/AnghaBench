
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct external_exec {int dummy; } ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_12__ {int output_has_begun; } ;
typedef TYPE_1__ bfd ;
struct TYPE_13__ {scalar_t__ filepos; } ;
typedef TYPE_2__ asection ;
struct TYPE_15__ {scalar_t__ filepos; } ;
struct TYPE_14__ {int filepos; scalar_t__ size; } ;


 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int aout_32_make_sections (TYPE_1__*) ;
 scalar_t__ bfd_bwrite (void*,scalar_t__,TYPE_1__*) ;
 scalar_t__ bfd_seek (TYPE_1__*,scalar_t__,int ) ;
 TYPE_5__* obj_datasec (TYPE_1__*) ;
 TYPE_3__* obj_textsec (TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
b_out_set_section_contents (bfd *abfd,
       asection *section,
       const void * location,
       file_ptr offset,
       bfd_size_type count)
{
  if (! abfd->output_has_begun)
    {

      if (! aout_32_make_sections (abfd))
 return FALSE;

      obj_textsec (abfd)->filepos = sizeof (struct external_exec);
      obj_datasec (abfd)->filepos = obj_textsec (abfd)->filepos
 + obj_textsec (abfd)->size;
    }


  if (bfd_seek (abfd, section->filepos + offset, SEEK_SET) != 0)
    return FALSE;

  if (count == 0)
    return TRUE;

  return bfd_bwrite ((void *) location, count, abfd) == count;
}
