
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objfile {int section_offsets; } ;
struct TYPE_2__ {scalar_t__ l_paddr; } ;
struct internal_lineno {TYPE_1__ l_addr; } ;


 scalar_t__ ANOFFSET (int ,int ) ;
 int L_LNNO32 (struct internal_lineno*) ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int bfd_coff_swap_lineno_in (int ,char*,struct internal_lineno*) ;
 int complaint (int *,char*,long) ;
 int current_subfile ;
 char* linetab ;
 long linetab_offset ;
 long linetab_size ;
 int local_linesz ;
 int record_line (int ,int,scalar_t__) ;
 int symfile_bfd ;
 int symfile_complaints ;

__attribute__((used)) static void
enter_linenos (long file_offset, int first_line,
        int last_line, struct objfile *objfile)
{
  char *rawptr;
  struct internal_lineno lptr;

  if (!linetab)
    return;
  if (file_offset < linetab_offset)
    {
      complaint (&symfile_complaints,
   "Line number pointer %ld lower than start of line numbers",
   file_offset);
      if (file_offset > linetab_size)
 return;
      file_offset += linetab_offset;
    }

  rawptr = &linetab[file_offset - linetab_offset];


  rawptr += local_linesz;

  first_line--;




  while (rawptr <= &linetab[0] + linetab_size)
    {
      bfd_coff_swap_lineno_in (symfile_bfd, rawptr, &lptr);
      rawptr += local_linesz;


      if (L_LNNO32 (&lptr) && L_LNNO32 (&lptr) <= last_line)
 record_line (current_subfile, first_line + L_LNNO32 (&lptr),
       lptr.l_addr.l_paddr
       + ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile)));
      else
 break;
    }
}
