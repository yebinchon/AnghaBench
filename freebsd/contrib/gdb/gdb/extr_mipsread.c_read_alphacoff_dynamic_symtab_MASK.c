#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct section_offsets {int dummy; } ;
struct objfile {int /*<<< orphan*/ * obfd; } ;
struct cleanup {int dummy; } ;
struct alphacoff_dynsecinfo {int /*<<< orphan*/ * got_sect; int /*<<< orphan*/ * dyninfo_sect; int /*<<< orphan*/ * str_sect; int /*<<< orphan*/ * sym_sect; } ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {scalar_t__ d_val; } ;
struct TYPE_6__ {TYPE_1__ d_un; scalar_t__ d_tag; } ;
struct TYPE_5__ {scalar_t__ st_shndx; scalar_t__ st_info; scalar_t__ st_value; scalar_t__ st_name; } ;
typedef  TYPE_2__ Elfalpha_External_Sym ;
typedef  TYPE_3__ Elfalpha_External_Dyn ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct section_offsets*,int /*<<< orphan*/ ) ; 
 long DT_MIPS_GOTSYM ; 
 long DT_MIPS_LOCAL_GOTNO ; 
 long DT_NULL ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC4 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC5 (struct objfile*) ; 
 unsigned int SHN_ABS ; 
 unsigned int SHN_MIPS_ACOMMON ; 
 unsigned int SHN_MIPS_DATA ; 
 unsigned int SHN_MIPS_TEXT ; 
 unsigned int SHN_UNDEF ; 
 scalar_t__ STB_GLOBAL ; 
 scalar_t__ STT_FUNC ; 
 int /*<<< orphan*/  alphacoff_locate_sections ; 
 scalar_t__ bfd_arch_alpha ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct cleanup*) ; 
 int /*<<< orphan*/  free ; 
 struct cleanup* FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 int mst_abs ; 
 int mst_bss ; 
 int mst_data ; 
 int mst_file_bss ; 
 int mst_file_data ; 
 int mst_file_text ; 
 int mst_solib_trampoline ; 
 int mst_text ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__,int,struct objfile*) ; 
 char* FUNC19 (int) ; 

__attribute__((used)) static void
FUNC20 (struct section_offsets *section_offsets,
			       struct objfile *objfile)
{
  bfd *abfd = objfile->obfd;
  struct alphacoff_dynsecinfo si;
  char *sym_secptr;
  char *str_secptr;
  char *dyninfo_secptr;
  char *got_secptr;
  bfd_size_type sym_secsize;
  bfd_size_type str_secsize;
  bfd_size_type dyninfo_secsize;
  bfd_size_type got_secsize;
  int sym_count;
  int i;
  int stripped;
  Elfalpha_External_Sym *x_symp;
  char *dyninfo_p;
  char *dyninfo_end;
  int got_entry_size = 8;
  int dt_mips_local_gotno = -1;
  int dt_mips_gotsym = -1;
  struct cleanup *cleanups;


  /* We currently only know how to handle alpha dynamic symbols.  */
  if (FUNC6 (abfd) != bfd_arch_alpha)
    return;

  /* Locate the dynamic symbols sections and read them in.  */
  FUNC17 ((char *) &si, 0, sizeof (si));
  FUNC14 (abfd, alphacoff_locate_sections, (void *) & si);
  if (si.sym_sect == NULL
      || si.str_sect == NULL
      || si.dyninfo_sect == NULL
      || si.got_sect == NULL)
    return;

  sym_secsize = FUNC8 (si.sym_sect);
  str_secsize = FUNC8 (si.str_sect);
  dyninfo_secsize = FUNC8 (si.dyninfo_sect);
  got_secsize = FUNC8 (si.got_sect);
  sym_secptr = FUNC19 (sym_secsize);
  cleanups = FUNC16 (free, sym_secptr);
  str_secptr = FUNC19 (str_secsize);
  FUNC16 (free, str_secptr);
  dyninfo_secptr = FUNC19 (dyninfo_secsize);
  FUNC16 (free, dyninfo_secptr);
  got_secptr = FUNC19 (got_secsize);
  FUNC16 (free, got_secptr);

  if (!FUNC7 (abfd, si.sym_sect, sym_secptr,
				 (file_ptr) 0, sym_secsize))
    return;
  if (!FUNC7 (abfd, si.str_sect, str_secptr,
				 (file_ptr) 0, str_secsize))
    return;
  if (!FUNC7 (abfd, si.dyninfo_sect, dyninfo_secptr,
				 (file_ptr) 0, dyninfo_secsize))
    return;
  if (!FUNC7 (abfd, si.got_sect, got_secptr,
				 (file_ptr) 0, got_secsize))
    return;

  /* Find the number of local GOT entries and the index for the
     the first dynamic symbol in the GOT. */
  for (dyninfo_p = dyninfo_secptr, dyninfo_end = dyninfo_p + dyninfo_secsize;
       dyninfo_p < dyninfo_end;
       dyninfo_p += sizeof (Elfalpha_External_Dyn))
    {
      Elfalpha_External_Dyn *x_dynp = (Elfalpha_External_Dyn *) dyninfo_p;
      long dyn_tag;

      dyn_tag = FUNC11 (abfd, (bfd_byte *) x_dynp->d_tag);
      if (dyn_tag == DT_NULL)
	break;
      else if (dyn_tag == DT_MIPS_LOCAL_GOTNO)
	{
	  if (dt_mips_local_gotno < 0)
	    dt_mips_local_gotno
	      = FUNC11 (abfd, (bfd_byte *) x_dynp->d_un.d_val);
	}
      else if (dyn_tag == DT_MIPS_GOTSYM)
	{
	  if (dt_mips_gotsym < 0)
	    dt_mips_gotsym
	      = FUNC11 (abfd, (bfd_byte *) x_dynp->d_un.d_val);
	}
    }
  if (dt_mips_local_gotno < 0 || dt_mips_gotsym < 0)
    return;

  /* Scan all dynamic symbols and enter them into the minimal symbol table
     if appropriate.  */
  sym_count = sym_secsize / sizeof (Elfalpha_External_Sym);
  stripped = (FUNC9 (abfd) == 0);

  /* Skip first symbol, which is a null dummy.  */
  for (i = 1, x_symp = (Elfalpha_External_Sym *) sym_secptr + 1;
       i < sym_count;
       i++, x_symp++)
    {
      unsigned long strx;
      char *name;
      bfd_vma sym_value;
      unsigned char sym_info;
      unsigned int sym_shndx;
      int isglobal;
      enum minimal_symbol_type ms_type;

      strx = FUNC11 (abfd, (bfd_byte *) x_symp->st_name);
      if (strx >= str_secsize)
	continue;
      name = str_secptr + strx;
      if (*name == '\0' || *name == '.')
	continue;

      sym_value = FUNC12 (abfd, (bfd_byte *) x_symp->st_value);
      sym_info = FUNC13 (abfd, (bfd_byte *) x_symp->st_info);
      sym_shndx = FUNC10 (abfd, (bfd_byte *) x_symp->st_shndx);
      isglobal = (FUNC1 (sym_info) == STB_GLOBAL);

      if (sym_shndx == SHN_UNDEF)
	{
	  /* Handle undefined functions which are defined in a shared
	     library.  */
	  if (FUNC2 (sym_info) != STT_FUNC
	      || FUNC1 (sym_info) != STB_GLOBAL)
	    continue;

	  ms_type = mst_solib_trampoline;

	  /* If sym_value is nonzero, it points to the shared library
	     trampoline entry, which is what we are looking for.

	     If sym_value is zero, then we have to get the GOT entry
	     for the symbol.
	     If the GOT entry is nonzero, it represents the quickstart
	     address of the function and we use that as the symbol value.

	     If the GOT entry is zero, the function address has to be resolved
	     by the runtime loader before the executable is started.
	     We are unable to find any meaningful address for these
	     functions in the executable file, so we skip them.  */
	  if (sym_value == 0)
	    {
	      int got_entry_offset =
	      (i - dt_mips_gotsym + dt_mips_local_gotno) * got_entry_size;

	      if (got_entry_offset < 0 || got_entry_offset >= got_secsize)
		continue;
	      sym_value =
		FUNC12 (abfd,
			      (bfd_byte *) (got_secptr + got_entry_offset));
	      if (sym_value == 0)
		continue;
	    }
	}
      else
	{
	  /* Symbols defined in the executable itself. We only care about
	     them if this is a stripped executable, otherwise they have
	     been retrieved from the normal symbol table already.  */
	  if (!stripped)
	    continue;

	  if (sym_shndx == SHN_MIPS_TEXT)
	    {
	      if (isglobal)
		ms_type = mst_text;
	      else
		ms_type = mst_file_text;
	      sym_value += FUNC0 (section_offsets, FUNC5 (objfile));
	    }
	  else if (sym_shndx == SHN_MIPS_DATA)
	    {
	      if (isglobal)
		ms_type = mst_data;
	      else
		ms_type = mst_file_data;
	      sym_value += FUNC0 (section_offsets, FUNC4 (objfile));
	    }
	  else if (sym_shndx == SHN_MIPS_ACOMMON)
	    {
	      if (isglobal)
		ms_type = mst_bss;
	      else
		ms_type = mst_file_bss;
	      sym_value += FUNC0 (section_offsets, FUNC3 (objfile));
	    }
	  else if (sym_shndx == SHN_ABS)
	    {
	      ms_type = mst_abs;
	    }
	  else
	    {
	      continue;
	    }
	}

      FUNC18 (name, sym_value, ms_type, objfile);
    }

  FUNC15 (cleanups);
}