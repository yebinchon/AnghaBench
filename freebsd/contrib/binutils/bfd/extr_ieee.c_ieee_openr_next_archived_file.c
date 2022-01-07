
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ file_offset; TYPE_3__* abfd; } ;
typedef TYPE_1__ ieee_ar_obstack_type ;
struct TYPE_12__ {int element_index; int element_count; TYPE_1__* elements; } ;
typedef TYPE_2__ ieee_ar_data_type ;
typedef scalar_t__ file_ptr ;
struct TYPE_13__ {scalar_t__ origin; } ;
typedef TYPE_3__ bfd ;


 TYPE_2__* IEEE_AR_DATA (TYPE_3__*) ;
 scalar_t__ TRUE ;
 TYPE_3__* _bfd_create_empty_archive_element_shell (TYPE_3__*) ;
 int bfd_error_no_more_archived_files ;
 int bfd_set_error (int ) ;

__attribute__((used)) static bfd *
ieee_openr_next_archived_file (bfd *arch, bfd *prev)
{
  ieee_ar_data_type *ar = IEEE_AR_DATA (arch);


  if (prev == (bfd *) ((void*)0))

    ar->element_index = 2;

  while (TRUE)
    {
      ieee_ar_obstack_type *p = ar->elements + ar->element_index;

      ar->element_index++;
      if (ar->element_index <= ar->element_count)
 {
   if (p->file_offset != (file_ptr) 0)
     {
       if (p->abfd == (bfd *) ((void*)0))
  {
    p->abfd = _bfd_create_empty_archive_element_shell (arch);
    p->abfd->origin = p->file_offset;
  }
       return p->abfd;
     }
 }
      else
 {
   bfd_set_error (bfd_error_no_more_archived_files);
   return ((void*)0);
 }
    }
}
