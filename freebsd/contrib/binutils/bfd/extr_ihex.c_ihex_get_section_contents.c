
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int * used_by_bfd; int size; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int TRUE ;
 int * bfd_alloc (int *,int ) ;
 int ihex_read_section (int *,TYPE_1__*,int *) ;
 int memcpy (void*,int *,size_t) ;

__attribute__((used)) static bfd_boolean
ihex_get_section_contents (bfd *abfd,
      asection *section,
      void * location,
      file_ptr offset,
      bfd_size_type count)
{
  if (section->used_by_bfd == ((void*)0))
    {
      section->used_by_bfd = bfd_alloc (abfd, section->size);
      if (section->used_by_bfd == ((void*)0))
 return FALSE;
      if (! ihex_read_section (abfd, section, section->used_by_bfd))
 return FALSE;
    }

  memcpy (location, (bfd_byte *) section->used_by_bfd + offset,
   (size_t) count);

  return TRUE;
}
