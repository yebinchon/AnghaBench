
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int timebuf ;
typedef void* time_t ;
struct tm {int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_mon; int tm_year; } ;
struct TYPE_12__ {unsigned int e_shnum; } ;
struct TYPE_11__ {int l_flags; int l_version; int l_checksum; int l_time_stamp; int l_name; } ;
struct TYPE_10__ {size_t l_name; void* l_flags; void* l_version; void* l_checksum; } ;
struct TYPE_9__ {int sh_type; size_t sh_size; int sh_entsize; int sh_offset; int sh_link; } ;
typedef int FILE ;
typedef TYPE_1__ Elf_Internal_Shdr ;
typedef TYPE_2__ Elf32_Lib ;
typedef TYPE_3__ Elf32_External_Lib ;


 void* BYTE_GET (int ) ;
 TYPE_1__* SECTION_HEADER (int ) ;
 unsigned int SECTION_HEADER_INDEX (int ) ;
 char* SECTION_NAME (TYPE_1__*) ;

 char* _ (char*) ;
 int do_arch ;
 int do_wide ;
 TYPE_6__ elf_header ;
 int free (TYPE_3__*) ;
 void* get_data (int *,int *,int ,int,size_t,char*) ;
 struct tm* gmtime (void**) ;
 int printf (char*,...) ;
 int puts (char*) ;
 TYPE_1__* section_headers ;
 int snprintf (char*,int,char*,int ,int ,int,int,int,int) ;

__attribute__((used)) static int
process_gnu_liblist (FILE *file)
{
  Elf_Internal_Shdr *section, *string_sec;
  Elf32_External_Lib *elib;
  char *strtab;
  size_t strtab_size;
  size_t cnt;
  unsigned i;

  if (! do_arch)
    return 0;

  for (i = 0, section = section_headers;
       i < elf_header.e_shnum;
       i++, section++)
    {
      switch (section->sh_type)
 {
 case 128:
   if (SECTION_HEADER_INDEX (section->sh_link) >= elf_header.e_shnum)
     break;

   elib = get_data (((void*)0), file, section->sh_offset, 1, section->sh_size,
      _("liblist"));

   if (elib == ((void*)0))
     break;
   string_sec = SECTION_HEADER (section->sh_link);

   strtab = get_data (((void*)0), file, string_sec->sh_offset, 1,
        string_sec->sh_size, _("liblist string table"));
   strtab_size = string_sec->sh_size;

   if (strtab == ((void*)0)
       || section->sh_entsize != sizeof (Elf32_External_Lib))
     {
       free (elib);
       break;
     }

   printf (_("\nLibrary list section '%s' contains %lu entries:\n"),
    SECTION_NAME (section),
    (long) (section->sh_size / sizeof (Elf32_External_Lib)));

   puts ("     Library              Time Stamp          Checksum   Version Flags");

   for (cnt = 0; cnt < section->sh_size / sizeof (Elf32_External_Lib);
        ++cnt)
     {
       Elf32_Lib liblist;
       time_t time;
       char timebuf[20];
       struct tm *tmp;

       liblist.l_name = BYTE_GET (elib[cnt].l_name);
       time = BYTE_GET (elib[cnt].l_time_stamp);
       liblist.l_checksum = BYTE_GET (elib[cnt].l_checksum);
       liblist.l_version = BYTE_GET (elib[cnt].l_version);
       liblist.l_flags = BYTE_GET (elib[cnt].l_flags);

       tmp = gmtime (&time);
       snprintf (timebuf, sizeof (timebuf),
   "%04u-%02u-%02uT%02u:%02u:%02u",
   tmp->tm_year + 1900, tmp->tm_mon + 1, tmp->tm_mday,
   tmp->tm_hour, tmp->tm_min, tmp->tm_sec);

       printf ("%3lu: ", (unsigned long) cnt);
       if (do_wide)
  printf ("%-20s", liblist.l_name < strtab_size
     ? strtab + liblist.l_name : "<corrupt>");
       else
  printf ("%-20.20s", liblist.l_name < strtab_size
        ? strtab + liblist.l_name : "<corrupt>");
       printf (" %s %#010lx %-7ld %-7ld\n", timebuf, liblist.l_checksum,
        liblist.l_version, liblist.l_flags);
     }

   free (elib);
 }
    }

  return 1;
}
