
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_6__ {int * data; } ;
struct TYPE_5__ {int flags; void* contents; scalar_t__ size; } ;


 int FALSE ;
 int SEC_DEBUGGING ;
 int TRUE ;
 void* bfd_alloc (int *,scalar_t__) ;
 TYPE_3__* ieee_per_section (TYPE_1__*) ;
 int init_for_output (int *) ;
 int memcpy (void*,void*,unsigned int) ;

__attribute__((used)) static bfd_boolean
ieee_set_section_contents (bfd *abfd,
      sec_ptr section,
      const void * location,
      file_ptr offset,
      bfd_size_type count)
{
  if ((section->flags & SEC_DEBUGGING) != 0)
    {
      if (section->contents == ((void*)0))
 {
   bfd_size_type size = section->size;
   section->contents = bfd_alloc (abfd, size);
   if (section->contents == ((void*)0))
     return FALSE;
 }


      memcpy (section->contents + offset, location, (size_t) count);
      return TRUE;
    }

  if (ieee_per_section (section)->data == (bfd_byte *) ((void*)0))
    {
      if (!init_for_output (abfd))
 return FALSE;
    }
  memcpy ((void *) (ieee_per_section (section)->data + offset),
   (void *) location,
   (unsigned int) count);
  return TRUE;
}
