
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ufile_ptr ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {size_t size; int alignment_power; int filepos; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int SEC_HAS_CONTENTS ;
 char* bfd_alloc (int *,size_t) ;
 TYPE_1__* bfd_make_section_anyway_with_flags (int *,char*,int ) ;
 int elfcore_make_pid (int *) ;
 int elfcore_maybe_make_sect (int *,char*,TYPE_1__*) ;
 int memcpy (char*,char*,size_t) ;
 int sprintf (char*,char*,char*,int) ;
 int strlen (char*) ;

bfd_boolean
_bfd_elfcore_make_pseudosection (bfd *abfd,
     char *name,
     size_t size,
     ufile_ptr filepos)
{
  char buf[100];
  char *threaded_name;
  size_t len;
  asection *sect;



  sprintf (buf, "%s/%d", name, elfcore_make_pid (abfd));
  len = strlen (buf) + 1;
  threaded_name = bfd_alloc (abfd, len);
  if (threaded_name == ((void*)0))
    return FALSE;
  memcpy (threaded_name, buf, len);

  sect = bfd_make_section_anyway_with_flags (abfd, threaded_name,
          SEC_HAS_CONTENTS);
  if (sect == ((void*)0))
    return FALSE;
  sect->size = size;
  sect->filepos = filepos;
  sect->alignment_power = 2;

  return elfcore_maybe_make_sect (abfd, name, sect);
}
