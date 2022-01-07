
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int FALSE ;
 int TRUE ;
 int * bfd_get_section_by_name (int *,char*) ;
 int bfd_get_section_contents (int *,int *,int *,int ,int ) ;
 int bfd_section_size (int *,int *) ;
 int free (int *) ;
 int parse_ieee (void*,int *,int *,int ) ;
 scalar_t__ xmalloc (int ) ;

__attribute__((used)) static bfd_boolean
read_ieee_debugging_info (bfd *abfd, void *dhandle, bfd_boolean *pfound)
{
  asection *dsec;
  bfd_size_type size;
  bfd_byte *contents;




  dsec = bfd_get_section_by_name (abfd, ".debug");
  if (dsec == ((void*)0))
    return TRUE;

  size = bfd_section_size (abfd, dsec);
  contents = (bfd_byte *) xmalloc (size);
  if (! bfd_get_section_contents (abfd, dsec, contents, 0, size))
    return FALSE;

  if (! parse_ieee (dhandle, abfd, contents, size))
    return FALSE;

  free (contents);

  *pfound = TRUE;

  return TRUE;
}
