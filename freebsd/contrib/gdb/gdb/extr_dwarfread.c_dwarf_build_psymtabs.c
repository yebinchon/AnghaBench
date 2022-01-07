
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct objfile {int section_offsets; TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; int * obfd; } ;
struct cleanup {int dummy; } ;
typedef int file_ptr ;
typedef int bfd ;


 int ANOFFSET (int ,int ) ;
 int SEEK_SET ;
 int base_section_offsets ;
 int baseaddr ;
 unsigned int bfd_bread (scalar_t__,unsigned int,int *) ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 struct objfile* current_objfile ;
 scalar_t__ dbbase ;
 scalar_t__ dbroff ;
 unsigned int dbsize ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,int ) ;
 int init_psymbol_list (struct objfile*,int) ;
 struct cleanup* make_cleanup (int (*) (scalar_t__),scalar_t__) ;
 int scan_compilation_units (scalar_t__,scalar_t__,int ,int ,struct objfile*) ;
 int xfree (scalar_t__) ;
 scalar_t__ xmalloc (unsigned int) ;

void
dwarf_build_psymtabs (struct objfile *objfile, int mainline, file_ptr dbfoff,
        unsigned int dbfsize, file_ptr lnoffset,
        unsigned int lnsize)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;

  current_objfile = objfile;
  dbsize = dbfsize;
  dbbase = xmalloc (dbsize);
  dbroff = 0;
  if ((bfd_seek (abfd, dbfoff, SEEK_SET) != 0) ||
      (bfd_bread (dbbase, dbsize, abfd) != dbsize))
    {
      xfree (dbbase);
      error ("can't read DWARF data from '%s'", bfd_get_filename (abfd));
    }
  back_to = make_cleanup (xfree, dbbase);





  if (mainline
      || (objfile->global_psymbols.size == 0
   && objfile->static_psymbols.size == 0))
    {
      init_psymbol_list (objfile, 1024);
    }



  base_section_offsets = objfile->section_offsets;
  baseaddr = ANOFFSET (objfile->section_offsets, 0);





  scan_compilation_units (dbbase, dbbase + dbsize, dbfoff, lnoffset, objfile);

  do_cleanups (back_to);
  current_objfile = ((void*)0);
}
