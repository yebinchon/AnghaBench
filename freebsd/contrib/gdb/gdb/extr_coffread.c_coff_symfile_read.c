
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct objfile {TYPE_2__* obfd; struct dbx_symfile_info* sym_stab_info; scalar_t__ sym_private; } ;
struct dbx_symfile_info {int dummy; } ;
struct coff_symfile_info {TYPE_11__* stabstrsect; scalar_t__ stabsects; int textsize; int textaddr; scalar_t__ min_lineno_offset; scalar_t__ max_lineno_offset; } ;
struct cleanup {int dummy; } ;
struct TYPE_17__ {int sym_filepos; unsigned int local_symesz; scalar_t__ local_auxesz; int local_linesz; int local_n_tshift; int local_n_tmask; int local_n_btshft; int local_n_btmask; } ;
typedef TYPE_1__ coff_data_type ;
struct TYPE_18__ {int where; } ;
typedef TYPE_2__ bfd ;
struct TYPE_16__ {int filepos; } ;


 char* bfd_get_filename (TYPE_2__*) ;
 unsigned int bfd_get_symcount (TYPE_2__*) ;
 int bfd_get_target (TYPE_2__*) ;
 int bfd_map_over_sections (TYPE_2__*,int ,void*) ;
 int bfd_section_size (TYPE_2__*,TYPE_11__*) ;
 int bfd_seek (TYPE_2__*,int ,int ) ;
 TYPE_1__* coff_data (TYPE_2__*) ;
 int coff_locate_sections ;
 int coff_symtab_read (long,unsigned int,struct objfile*) ;
 int coffstab_build_psymtabs (struct objfile*,int,int ,int ,scalar_t__,int ,int) ;
 int do_cleanups (struct cleanup*) ;
 int dwarf2_build_psymtabs (struct objfile*,int) ;
 scalar_t__ dwarf2_has_info (TYPE_2__*) ;
 int error (char*,char*) ;
 int find_linenos ;
 int free_current_contents ;
 int free_linetab_cleanup ;
 int free_stringtab_cleanup ;
 int init_lineno (TYPE_2__*,scalar_t__,scalar_t__) ;
 int init_minimal_symbol_collection () ;
 int init_stringtab (TYPE_2__*,int) ;
 int install_minimal_symbols (struct objfile*) ;
 scalar_t__ local_auxesz ;
 int local_linesz ;
 int local_n_btmask ;
 int local_n_btshft ;
 int local_n_tmask ;
 int local_n_tshift ;
 unsigned int local_symesz ;
 struct cleanup* make_cleanup (int ,char**) ;
 struct cleanup* make_cleanup_discard_minimal_symbols () ;
 int pe_file ;
 scalar_t__ strncmp (int ,char*,int) ;
 TYPE_2__* symfile_bfd ;
 char* temp_aux ;
 char* temp_sym ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static void
coff_symfile_read (struct objfile *objfile, int mainline)
{
  struct coff_symfile_info *info;
  struct dbx_symfile_info *dbxinfo;
  bfd *abfd = objfile->obfd;
  coff_data_type *cdata = coff_data (abfd);
  char *name = bfd_get_filename (abfd);
  int val;
  unsigned int num_symbols;
  int symtab_offset;
  int stringtab_offset;
  struct cleanup *back_to, *cleanup_minimal_symbols;
  int stabstrsize;
  int len;
  char * target;

  info = (struct coff_symfile_info *) objfile->sym_private;
  dbxinfo = objfile->sym_stab_info;
  symfile_bfd = abfd;


  num_symbols = bfd_get_symcount (abfd);
  symtab_offset = cdata->sym_filepos;
  stringtab_offset = symtab_offset +
    num_symbols * cdata->local_symesz;



  local_n_btmask = cdata->local_n_btmask;
  local_n_btshft = cdata->local_n_btshft;
  local_n_tmask = cdata->local_n_tmask;
  local_n_tshift = cdata->local_n_tshift;
  local_linesz = cdata->local_linesz;
  local_symesz = cdata->local_symesz;
  local_auxesz = cdata->local_auxesz;



  temp_sym = (char *) xmalloc
    (cdata->local_symesz + cdata->local_auxesz);
  temp_aux = temp_sym + cdata->local_symesz;
  back_to = make_cleanup (free_current_contents, &temp_sym);






  pe_file =
    strncmp (bfd_get_target (objfile->obfd), "pe", 2) == 0
    || strncmp (bfd_get_target (objfile->obfd), "epoc-pe", 7) == 0;



  info->min_lineno_offset = 0;
  info->max_lineno_offset = 0;
  if (num_symbols > 0)
    {

      bfd_map_over_sections (abfd, find_linenos, (void *) info);

      make_cleanup (free_linetab_cleanup, 0 );
      val = init_lineno (abfd, info->min_lineno_offset,
                         info->max_lineno_offset - info->min_lineno_offset);
      if (val < 0)
        error ("\"%s\": error reading line numbers\n", name);
    }



  make_cleanup (free_stringtab_cleanup, 0 );
  val = init_stringtab (abfd, stringtab_offset);
  if (val < 0)
    error ("\"%s\": can't get string table", name);

  init_minimal_symbol_collection ();
  cleanup_minimal_symbols = make_cleanup_discard_minimal_symbols ();




  coff_symtab_read ((long) symtab_offset, num_symbols, objfile);




  install_minimal_symbols (objfile);


  do_cleanups (cleanup_minimal_symbols);

  bfd_map_over_sections (abfd, coff_locate_sections, (void *) info);

  if (info->stabsects)
    {
      if (!info->stabstrsect)
 {
   error (("The debugging information in `%s' is corrupted.\n"
    "The file has a `.stabs' section, but no `.stabstr' "
    "section."),
   name);
 }



      bfd_seek (abfd, abfd->where, 0);

      stabstrsize = bfd_section_size (abfd, info->stabstrsect);

      coffstab_build_psymtabs (objfile,
          mainline,
          info->textaddr, info->textsize,
          info->stabsects,
          info->stabstrsect->filepos, stabstrsize);
    }
  if (dwarf2_has_info (abfd))
    {

      dwarf2_build_psymtabs (objfile, mainline);
    }

  do_cleanups (back_to);
}
