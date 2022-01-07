
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {int obfd; } ;
typedef int PXDB_header ;
typedef int DOC_info_PXDB_header ;


 char* alloca (int) ;
 unsigned long bfd_get_32 (int *,int *) ;
 int * bfd_get_section_by_name (int *,char*) ;
 int bfd_get_section_contents (int *,int *,char*,int ,scalar_t__) ;
 scalar_t__ bfd_section_size (int ,int *) ;
 int error (char*) ;
 int memset (char*,int ,int) ;
 TYPE_1__* objfile ;

__attribute__((used)) static int
hpread_pxdb_needed (bfd *sym_bfd)
{
  asection *pinfo_section, *debug_section, *header_section;
  unsigned int do_pxdb;
  char *buf;
  bfd_size_type header_section_size;

  unsigned long tmp;
  unsigned int pxdbed;

  header_section = bfd_get_section_by_name (sym_bfd, "$HEADER$");
  if (!header_section)
    {
      return 0;
    }

  debug_section = bfd_get_section_by_name (sym_bfd, "$DEBUG$");
  pinfo_section = bfd_get_section_by_name (sym_bfd, "$PINFO$");

  if (pinfo_section && !debug_section)
    {



      header_section_size = bfd_section_size (objfile->obfd, header_section);

      if (header_section_size == (bfd_size_type) sizeof (DOC_info_PXDB_header))
 {
   buf = alloca (sizeof (DOC_info_PXDB_header));
   memset (buf, 0, sizeof (DOC_info_PXDB_header));

   if (!bfd_get_section_contents (sym_bfd,
      header_section,
      buf, 0,
      header_section_size))
     error ("bfd_get_section_contents\n");

   tmp = bfd_get_32 (sym_bfd, (bfd_byte *) (buf + sizeof (int) * 4));
   pxdbed = (tmp >> 31) & 0x1;

   if (!pxdbed)
     error ("file debug header info invalid\n");
   do_pxdb = 0;
 }

      else
 error ("invalid $HEADER$ size in executable \n");
    }

  else
    {
      header_section_size = bfd_section_size (objfile->obfd, header_section);

      if (header_section_size == (bfd_size_type) sizeof (PXDB_header))
 {

   buf = alloca (sizeof (PXDB_header));
   memset (buf, 0, sizeof (PXDB_header));
   if (!bfd_get_section_contents (sym_bfd,
      header_section,
      buf, 0,
      header_section_size))
     error ("bfd_get_section_contents\n");

   tmp = bfd_get_32 (sym_bfd, (bfd_byte *) (buf + sizeof (int) * 3));
   pxdbed = (tmp >> 31) & 0x1;

   if (pxdbed)
     do_pxdb = 0;
   else
     error ("file debug header invalid\n");
 }
      else
 do_pxdb = 1;
    }

  if (do_pxdb)
    {
      return 1;
    }
  else
    {
      return 0;
    }
}
