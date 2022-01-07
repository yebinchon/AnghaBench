
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_offsets {int dummy; } ;
struct partial_symtab {scalar_t__ textlow; int texthigh; int symtab; struct section_offsets* section_offsets; struct objfile* objfile; } ;
struct objfile {int * obfd; } ;
struct internal_nlist {unsigned char n_type; int n_value; int n_desc; } ;
struct external_nlist {int e_type; } ;
typedef int bfd ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ AUTO_DEMANGLING ;
 int DBX_STRINGTAB (struct objfile*) ;
 scalar_t__ DEPRECATED_STREQ (char*,int ) ;
 scalar_t__ DEPRECATED_STREQN (char const*,char*,int) ;
 int GCC2_COMPILED_FLAG_SYMBOL ;
 int GCC_COMPILED_FLAG_SYMBOL ;
 int GNU_DEMANGLING_STYLE_STRING ;
 int INTERNALIZE_SYMBOL (struct internal_nlist,struct external_nlist*,int *) ;
 int LDSYMLEN (struct partial_symtab*) ;
 int LDSYMOFF (struct partial_symtab*) ;
 unsigned char N_EXT ;
 scalar_t__ N_NBTEXT ;
 unsigned char N_SO ;
 unsigned char N_STAB ;
 unsigned char N_TEXT ;
 int OBJSTAT (struct objfile*,int ) ;
 int QUIT ;
 int SECT_OFF_TEXT (struct objfile*) ;
 char const bfd_get_symbol_leading_char (int *) ;
 unsigned char bfd_h_get_8 (int *,int ) ;
 struct objfile* current_objfile ;
 int end_stabs () ;
 int end_symtab (scalar_t__,struct objfile*,int ) ;
 int error (char*) ;
 int fill_symbuf (int *) ;
 int * last_source_file ;
 scalar_t__ last_source_start_addr ;
 int n_stabs ;
 int process_one_symbol (unsigned char,int ,int ,char*,struct section_offsets*,struct objfile*) ;
 int processing_acc_compilation ;
 int processing_gcc_compilation ;
 int set_demangling_style (int ) ;
 char* set_namestring (struct objfile*,struct internal_nlist) ;
 int stabs_seek (int) ;
 int stringtab_global ;
 int * subfile_stack ;
 int symbol_size ;
 struct external_nlist* symbuf ;
 size_t symbuf_end ;
 size_t symbuf_idx ;
 int symbuf_left ;
 scalar_t__ symbuf_read ;
 int * symfile_bfd ;
 unsigned int symnum ;

__attribute__((used)) static void
read_ofile_symtab (struct partial_symtab *pst)
{
  char *namestring;
  struct external_nlist *bufp;
  struct internal_nlist nlist;
  unsigned char type;
  unsigned max_symnum;
  bfd *abfd;
  struct objfile *objfile;
  int sym_offset;
  int sym_size;
  CORE_ADDR text_offset;
  int text_size;
  struct section_offsets *section_offsets;

  objfile = pst->objfile;
  sym_offset = LDSYMOFF (pst);
  sym_size = LDSYMLEN (pst);
  text_offset = pst->textlow;
  text_size = pst->texthigh - pst->textlow;




  section_offsets = pst->section_offsets;

  current_objfile = objfile;
  subfile_stack = ((void*)0);

  stringtab_global = DBX_STRINGTAB (objfile);
  last_source_file = ((void*)0);

  abfd = objfile->obfd;
  symfile_bfd = objfile->obfd;
  symbuf_end = symbuf_idx = 0;
  symbuf_read = 0;
  symbuf_left = sym_offset + sym_size;







  if (!processing_acc_compilation && sym_offset >= (int) symbol_size)
    {
      stabs_seek (sym_offset - symbol_size);
      fill_symbuf (abfd);
      bufp = &symbuf[symbuf_idx++];
      INTERNALIZE_SYMBOL (nlist, bufp, abfd);
      OBJSTAT (objfile, n_stabs++);

      namestring = set_namestring (objfile, nlist);

      processing_gcc_compilation = 0;
      if (nlist.n_type == N_TEXT)
 {
   const char *tempstring = namestring;

   if (DEPRECATED_STREQ (namestring, GCC_COMPILED_FLAG_SYMBOL))
     processing_gcc_compilation = 1;
   else if (DEPRECATED_STREQ (namestring, GCC2_COMPILED_FLAG_SYMBOL))
     processing_gcc_compilation = 2;
   if (tempstring[0] == bfd_get_symbol_leading_char (symfile_bfd))
     ++tempstring;
   if (DEPRECATED_STREQN (tempstring, "__gnu_compiled", 14))
     processing_gcc_compilation = 2;
 }
    }
  else
    {



      stabs_seek (sym_offset);
      processing_gcc_compilation = 0;
    }

  if (symbuf_idx == symbuf_end)
    fill_symbuf (abfd);
  bufp = &symbuf[symbuf_idx];
  if (bfd_h_get_8 (abfd, bufp->e_type) != N_SO)
    error ("First symbol in segment of executable not a source symbol");

  max_symnum = sym_size / symbol_size;

  for (symnum = 0;
       symnum < max_symnum;
       symnum++)
    {
      QUIT;
      if (symbuf_idx == symbuf_end)
 fill_symbuf (abfd);
      bufp = &symbuf[symbuf_idx++];
      INTERNALIZE_SYMBOL (nlist, bufp, abfd);
      OBJSTAT (objfile, n_stabs++);

      type = bfd_h_get_8 (abfd, bufp->e_type);

      namestring = set_namestring (objfile, nlist);

      if (type & N_STAB)
 {
   process_one_symbol (type, nlist.n_desc, nlist.n_value,
         namestring, section_offsets, objfile);
 }


      else if (type == N_TEXT)
 {






   if (DEPRECATED_STREQ (namestring, GCC_COMPILED_FLAG_SYMBOL))
     processing_gcc_compilation = 1;
   else if (DEPRECATED_STREQ (namestring, GCC2_COMPILED_FLAG_SYMBOL))
     processing_gcc_compilation = 2;
 }
      else if (type & N_EXT || type == (unsigned char) N_TEXT
        || type == (unsigned char) N_NBTEXT
 )
 {
   ;
 }
    }

  current_objfile = ((void*)0);




  if (last_source_start_addr == 0)
    last_source_start_addr = text_offset;




  if (last_source_start_addr > text_offset)
    last_source_start_addr = text_offset;

  pst->symtab = end_symtab (text_offset + text_size, objfile, SECT_OFF_TEXT (objfile));

  end_stabs ();
}
