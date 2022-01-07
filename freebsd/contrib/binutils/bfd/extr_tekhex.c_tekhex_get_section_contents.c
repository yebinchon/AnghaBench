
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int SEC_ALLOC ;
 int SEC_LOAD ;
 int TRUE ;
 int move_section_contents (int *,TYPE_1__*,void*,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
tekhex_get_section_contents (bfd *abfd,
        asection *section,
        void * locationp,
        file_ptr offset,
        bfd_size_type count)
{
  if (section->flags & (SEC_LOAD | SEC_ALLOC))
    {
      move_section_contents (abfd, section, locationp, offset, count, TRUE);
      return TRUE;
    }

  return FALSE;
}
