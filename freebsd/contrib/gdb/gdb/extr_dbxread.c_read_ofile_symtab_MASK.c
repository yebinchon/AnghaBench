#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct section_offsets {int dummy; } ;
struct partial_symtab {scalar_t__ textlow; int texthigh; int /*<<< orphan*/  symtab; struct section_offsets* section_offsets; struct objfile* objfile; } ;
struct objfile {int /*<<< orphan*/ * obfd; } ;
struct internal_nlist {unsigned char n_type; int /*<<< orphan*/  n_value; int /*<<< orphan*/  n_desc; } ;
struct external_nlist {int /*<<< orphan*/  e_type; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ AUTO_DEMANGLING ; 
 int /*<<< orphan*/  FUNC0 (struct objfile*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  GCC2_COMPILED_FLAG_SYMBOL ; 
 int /*<<< orphan*/  GCC_COMPILED_FLAG_SYMBOL ; 
 int /*<<< orphan*/  GNU_DEMANGLING_STYLE_STRING ; 
 int /*<<< orphan*/  FUNC3 (struct internal_nlist,struct external_nlist*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct partial_symtab*) ; 
 int FUNC5 (struct partial_symtab*) ; 
 unsigned char N_EXT ; 
 scalar_t__ N_NBTEXT ; 
 unsigned char N_SO ; 
 unsigned char N_STAB ; 
 unsigned char N_TEXT ; 
 int /*<<< orphan*/  FUNC6 (struct objfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC7 (struct objfile*) ; 
 char const FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct objfile* current_objfile ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct objfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * last_source_file ; 
 scalar_t__ last_source_start_addr ; 
 int /*<<< orphan*/  n_stabs ; 
 int /*<<< orphan*/  FUNC14 (unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct section_offsets*,struct objfile*) ; 
 int /*<<< orphan*/  processing_acc_compilation ; 
 int processing_gcc_compilation ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (struct objfile*,struct internal_nlist) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  stringtab_global ; 
 int /*<<< orphan*/ * subfile_stack ; 
 int symbol_size ; 
 struct external_nlist* symbuf ; 
 size_t symbuf_end ; 
 size_t symbuf_idx ; 
 int symbuf_left ; 
 scalar_t__ symbuf_read ; 
 int /*<<< orphan*/ * symfile_bfd ; 
 unsigned int symnum ; 

__attribute__((used)) static void
FUNC18 (struct partial_symtab *pst)
{
  char *namestring;
  struct external_nlist *bufp;
  struct internal_nlist nlist;
  unsigned char type;
  unsigned max_symnum;
  bfd *abfd;
  struct objfile *objfile;
  int sym_offset;		/* Offset to start of symbols to read */
  int sym_size;			/* Size of symbols to read */
  CORE_ADDR text_offset;	/* Start of text segment for symbols */
  int text_size;		/* Size of text segment for symbols */
  struct section_offsets *section_offsets;

  objfile = pst->objfile;
  sym_offset = FUNC5 (pst);
  sym_size = FUNC4 (pst);
  text_offset = pst->textlow;
  text_size = pst->texthigh - pst->textlow;
  /* This cannot be simply objfile->section_offsets because of
     elfstab_offset_sections() which initializes the psymtab section
     offsets information in a special way, and that is different from
     objfile->section_offsets. */ 
  section_offsets = pst->section_offsets;

  current_objfile = objfile;
  subfile_stack = NULL;

  stringtab_global = FUNC0 (objfile);
  last_source_file = NULL;

  abfd = objfile->obfd;
  symfile_bfd = objfile->obfd;	/* Implicit param to next_text_symbol */
  symbuf_end = symbuf_idx = 0;
  symbuf_read = 0;
  symbuf_left = sym_offset + sym_size;

  /* It is necessary to actually read one symbol *before* the start
     of this symtab's symbols, because the GCC_COMPILED_FLAG_SYMBOL
     occurs before the N_SO symbol.

     Detecting this in read_dbx_symtab
     would slow down initial readin, so we look for it here instead.  */
  if (!processing_acc_compilation && sym_offset >= (int) symbol_size)
    {
      FUNC17 (sym_offset - symbol_size);
      FUNC13 (abfd);
      bufp = &symbuf[symbuf_idx++];
      FUNC3 (nlist, bufp, abfd);
      FUNC6 (objfile, n_stabs++);

      namestring = FUNC16 (objfile, nlist);

      processing_gcc_compilation = 0;
      if (nlist.n_type == N_TEXT)
	{
	  const char *tempstring = namestring;

	  if (FUNC1 (namestring, GCC_COMPILED_FLAG_SYMBOL))
	    processing_gcc_compilation = 1;
	  else if (FUNC1 (namestring, GCC2_COMPILED_FLAG_SYMBOL))
	    processing_gcc_compilation = 2;
	  if (tempstring[0] == FUNC8 (symfile_bfd))
	    ++tempstring;
	  if (FUNC2 (tempstring, "__gnu_compiled", 14))
	    processing_gcc_compilation = 2;
	}

      /* Try to select a C++ demangling based on the compilation unit
         producer. */

#if 0
      /* For now, stay with AUTO_DEMANGLING for g++ output, as we don't
	 know whether it will use the old style or v3 mangling.  */
      if (processing_gcc_compilation)
	{
	  if (AUTO_DEMANGLING)
	    {
	      set_demangling_style (GNU_DEMANGLING_STYLE_STRING);
	    }
	}
#endif
    }
  else
    {
      /* The N_SO starting this symtab is the first symbol, so we
         better not check the symbol before it.  I'm not this can
         happen, but it doesn't hurt to check for it.  */
      FUNC17 (sym_offset);
      processing_gcc_compilation = 0;
    }

  if (symbuf_idx == symbuf_end)
    FUNC13 (abfd);
  bufp = &symbuf[symbuf_idx];
  if (FUNC9 (abfd, bufp->e_type) != N_SO)
    FUNC12 ("First symbol in segment of executable not a source symbol");

  max_symnum = sym_size / symbol_size;

  for (symnum = 0;
       symnum < max_symnum;
       symnum++)
    {
      QUIT;			/* Allow this to be interruptable */
      if (symbuf_idx == symbuf_end)
	FUNC13 (abfd);
      bufp = &symbuf[symbuf_idx++];
      FUNC3 (nlist, bufp, abfd);
      FUNC6 (objfile, n_stabs++);

      type = FUNC9 (abfd, bufp->e_type);

      namestring = FUNC16 (objfile, nlist);

      if (type & N_STAB)
	{
	  FUNC14 (type, nlist.n_desc, nlist.n_value,
			      namestring, section_offsets, objfile);
	}
      /* We skip checking for a new .o or -l file; that should never
         happen in this routine. */
      else if (type == N_TEXT)
	{
	  /* I don't think this code will ever be executed, because
	     the GCC_COMPILED_FLAG_SYMBOL usually is right before
	     the N_SO symbol which starts this source file.
	     However, there is no reason not to accept
	     the GCC_COMPILED_FLAG_SYMBOL anywhere.  */

	  if (FUNC1 (namestring, GCC_COMPILED_FLAG_SYMBOL))
	    processing_gcc_compilation = 1;
	  else if (FUNC1 (namestring, GCC2_COMPILED_FLAG_SYMBOL))
	    processing_gcc_compilation = 2;

#if 0
	  /* For now, stay with AUTO_DEMANGLING for g++ output, as we don't
	     know whether it will use the old style or v3 mangling.  */
	  if (AUTO_DEMANGLING)
	    {
	      set_demangling_style (GNU_DEMANGLING_STYLE_STRING);
	    }
#endif
	}
      else if (type & N_EXT || type == (unsigned char) N_TEXT
	       || type == (unsigned char) N_NBTEXT
	)
	{
	  /* Global symbol: see if we came across a dbx defintion for
	     a corresponding symbol.  If so, store the value.  Remove
	     syms from the chain when their values are stored, but
	     search the whole chain, as there may be several syms from
	     different files with the same name. */
	  /* This is probably not true.  Since the files will be read
	     in one at a time, each reference to a global symbol will
	     be satisfied in each file as it appears. So we skip this
	     section. */
	  ;
	}
    }

  current_objfile = NULL;

  /* In a Solaris elf file, this variable, which comes from the
     value of the N_SO symbol, will still be 0.  Luckily, text_offset,
     which comes from pst->textlow is correct. */
  if (last_source_start_addr == 0)
    last_source_start_addr = text_offset;

  /* In reordered executables last_source_start_addr may not be the
     lower bound for this symtab, instead use text_offset which comes
     from pst->textlow which is correct.  */
  if (last_source_start_addr > text_offset)
    last_source_start_addr = text_offset;

  pst->symtab = FUNC11 (text_offset + text_size, objfile, FUNC7 (objfile));

  FUNC10 ();
}