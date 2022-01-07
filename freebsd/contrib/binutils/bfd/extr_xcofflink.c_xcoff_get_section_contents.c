
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct coff_section_tdata {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_6__ {int * used_by_bfd; } ;
typedef TYPE_1__ asection ;
struct TYPE_7__ {int * contents; } ;


 int FALSE ;
 int TRUE ;
 int bfd_malloc_and_get_section (int *,TYPE_1__*,int **) ;
 int * bfd_zalloc (int *,int) ;
 TYPE_3__* coff_section_data (int *,TYPE_1__*) ;
 int free (int *) ;

__attribute__((used)) static bfd_boolean
xcoff_get_section_contents (bfd *abfd, asection *sec)
{
  if (coff_section_data (abfd, sec) == ((void*)0))
    {
      bfd_size_type amt = sizeof (struct coff_section_tdata);

      sec->used_by_bfd = bfd_zalloc (abfd, amt);
      if (sec->used_by_bfd == ((void*)0))
 return FALSE;
    }

  if (coff_section_data (abfd, sec)->contents == ((void*)0))
    {
      bfd_byte *contents;

      if (! bfd_malloc_and_get_section (abfd, sec, &contents))
 {
   if (contents != ((void*)0))
     free (contents);
   return FALSE;
 }
      coff_section_data (abfd, sec)->contents = contents;
    }

  return TRUE;
}
