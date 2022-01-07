
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_2__ ieee_per_section_type ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_7__ {int flags; } ;


 int SEC_DEBUGGING ;
 int TRUE ;
 int _bfd_generic_get_section_contents (int *,TYPE_1__*,void*,scalar_t__,scalar_t__) ;
 TYPE_2__* ieee_per_section (TYPE_1__*) ;
 int ieee_slurp_section_data (int *) ;
 int memcpy (void*,void*,unsigned int) ;

__attribute__((used)) static bfd_boolean
ieee_get_section_contents (bfd *abfd,
      sec_ptr section,
      void * location,
      file_ptr offset,
      bfd_size_type count)
{
  ieee_per_section_type *p = ieee_per_section (section);
  if ((section->flags & SEC_DEBUGGING) != 0)
    return _bfd_generic_get_section_contents (abfd, section, location,
           offset, count);
  ieee_slurp_section_data (abfd);
  (void) memcpy ((void *) location, (void *) (p->data + offset), (unsigned) count);
  return TRUE;
}
