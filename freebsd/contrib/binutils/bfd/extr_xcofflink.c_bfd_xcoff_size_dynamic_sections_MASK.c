#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_50__   TYPE_9__ ;
typedef  struct TYPE_49__   TYPE_8__ ;
typedef  struct TYPE_48__   TYPE_7__ ;
typedef  struct TYPE_47__   TYPE_6__ ;
typedef  struct TYPE_46__   TYPE_5__ ;
typedef  struct TYPE_45__   TYPE_4__ ;
typedef  struct TYPE_44__   TYPE_3__ ;
typedef  struct TYPE_43__   TYPE_2__ ;
typedef  struct TYPE_42__   TYPE_1__ ;
typedef  struct TYPE_41__   TYPE_15__ ;
typedef  struct TYPE_40__   TYPE_12__ ;
typedef  struct TYPE_39__   TYPE_10__ ;

/* Type definitions */
struct xcoff_loader_info {int ldsym_count; scalar_t__ string_size; int /*<<< orphan*/ * strings; void* failed; TYPE_9__* output_bfd; scalar_t__ string_alc; void* export_defineds; struct bfd_link_info* info; } ;
struct TYPE_43__ {TYPE_10__* section; scalar_t__ value; } ;
struct TYPE_44__ {TYPE_2__ def; } ;
struct TYPE_42__ {int /*<<< orphan*/  string; } ;
struct TYPE_45__ {scalar_t__ type; TYPE_3__ u; TYPE_1__ root; } ;
struct xcoff_link_hash_entry {int flags; int ldindx; TYPE_4__ root; struct internal_ldsym* ldsym; } ;
struct xcoff_import_file {char const* path; char const* file; char const* member; struct xcoff_import_file* next; } ;
struct TYPE_47__ {scalar_t__ _n_zeroes; int _n_offset; } ;
struct TYPE_48__ {TYPE_6__ _n_n; } ;
struct internal_syment {int n_numaux; TYPE_7__ _n; } ;
struct internal_ldsym {int l_scnum; int l_smclas; scalar_t__ l_parm; scalar_t__ l_ifile; int /*<<< orphan*/  l_smtype; scalar_t__ l_value; } ;
struct internal_ldhdr {int l_nsyms; int l_nreloc; size_t l_istlen; size_t l_nimpid; scalar_t__ l_impoff; scalar_t__ l_stlen; void* l_rldoff; void* l_symoff; scalar_t__ l_stoff; int /*<<< orphan*/  l_version; } ;
struct bfd_strtab_hash {int dummy; } ;
struct bfd_link_info {scalar_t__ strip; scalar_t__ discard; int /*<<< orphan*/  keep_memory; TYPE_5__* hash; TYPE_9__* input_bfds; scalar_t__ relocatable; scalar_t__ fini_function; scalar_t__ init_function; } ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  void* bfd_boolean ;
struct TYPE_50__ {scalar_t__ xvec; struct TYPE_50__* link_next; TYPE_10__* sections; } ;
typedef  TYPE_9__ bfd ;
struct TYPE_39__ {int flags; scalar_t__ size; int /*<<< orphan*/ * contents; struct TYPE_39__* next; } ;
typedef  TYPE_10__ asection ;
struct TYPE_49__ {int /*<<< orphan*/  size; } ;
struct TYPE_46__ {scalar_t__ creator; } ;
struct TYPE_41__ {unsigned long maxstack; unsigned long maxdata; int modtype; unsigned long* debug_indices; TYPE_10__** csects; } ;
struct TYPE_40__ {unsigned long file_align; int ldrel_count; TYPE_8__* debug_section; struct bfd_strtab_hash* debug_strtab; TYPE_10__* descriptor_section; TYPE_10__* toc_section; TYPE_10__* linkage_section; struct xcoff_import_file* imports; TYPE_10__* loader_section; struct internal_ldhdr ldhdr; TYPE_10__** special_sections; void* gc; void* textro; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FALSE ; 
 int SEC_MARK ; 
 void* TRUE ; 
 int XCOFF_DEF_REGULAR ; 
 int XCOFF_ENTRY ; 
 int XCOFF_MARK ; 
 int XCOFF_NUMBER_OF_SPECIAL_SECTIONS ; 
 int XCOFF_RTINIT ; 
 int /*<<< orphan*/  XTY_SD ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bfd_strtab_hash*,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfd_strtab_hash*) ; 
 TYPE_10__* bfd_abs_section_ptr ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,void*,void*) ; 
 scalar_t__ FUNC8 (TYPE_9__*) ; 
 scalar_t__ FUNC9 (TYPE_9__*,struct internal_syment*) ; 
 scalar_t__ FUNC10 (TYPE_9__*) ; 
 TYPE_10__* FUNC11 (TYPE_9__*,char*) ; 
 scalar_t__ bfd_link_hash_defined ; 
 scalar_t__ bfd_link_hash_defweak ; 
 struct internal_ldsym* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_9__*,TYPE_10__*,int /*<<< orphan*/ **) ; 
 scalar_t__ bfd_target_xcoff_flavour ; 
 int /*<<< orphan*/  FUNC14 (TYPE_9__*) ; 
 void* FUNC15 (TYPE_9__*) ; 
 int FUNC16 (TYPE_9__*) ; 
 int FUNC17 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_9__*,struct xcoff_loader_info*,struct internal_ldsym*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_9__*,struct internal_ldhdr*,int /*<<< orphan*/ *) ; 
 void* FUNC20 (TYPE_9__*,scalar_t__) ; 
 scalar_t__ discard_all ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC23 (TYPE_9__*) ; 
 scalar_t__ FUNC24 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char const*) ; 
 scalar_t__ strip_all ; 
 scalar_t__ strip_debugger ; 
 size_t FUNC26 (char const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xcoff_build_ldsyms ; 
 TYPE_15__* FUNC28 (TYPE_9__*) ; 
 TYPE_12__* FUNC29 (struct bfd_link_info*) ; 
 struct xcoff_link_hash_entry* FUNC30 (TYPE_12__*,char const*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_12__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC32 (struct bfd_link_info*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC33 (struct bfd_link_info*,struct xcoff_link_hash_entry*) ; 
 int /*<<< orphan*/  FUNC34 (struct bfd_link_info*) ; 

bfd_boolean
FUNC35 (bfd *output_bfd,
				 struct bfd_link_info *info,
				 const char *libpath,
				 const char *entry,
				 unsigned long file_align,
				 unsigned long maxstack,
				 unsigned long maxdata,
				 bfd_boolean gc,
				 int modtype,
				 bfd_boolean textro,
				 bfd_boolean export_defineds,
				 asection **special_sections,
				 bfd_boolean rtld)
{
  struct xcoff_link_hash_entry *hentry;
  asection *lsec;
  struct xcoff_loader_info ldinfo;
  int i;
  size_t impsize, impcount;
  struct xcoff_import_file *fl;
  struct internal_ldhdr *ldhdr;
  bfd_size_type stoff;
  char *out;
  asection *sec;
  bfd *sub;
  struct bfd_strtab_hash *debug_strtab;
  bfd_byte *debug_contents = NULL;
  bfd_size_type amt;

  if (FUNC10 (output_bfd) != bfd_target_xcoff_flavour)
    {
      for (i = 0; i < XCOFF_NUMBER_OF_SPECIAL_SECTIONS; i++)
	special_sections[i] = NULL;
      return TRUE;
    }

  ldinfo.failed = FALSE;
  ldinfo.output_bfd = output_bfd;
  ldinfo.info = info;
  ldinfo.export_defineds = export_defineds;
  ldinfo.ldsym_count = 0;
  ldinfo.string_size = 0;
  ldinfo.strings = NULL;
  ldinfo.string_alc = 0;

  FUNC28 (output_bfd)->maxstack = maxstack;
  FUNC28 (output_bfd)->maxdata = maxdata;
  FUNC28 (output_bfd)->modtype = modtype;

  FUNC29 (info)->file_align = file_align;
  FUNC29 (info)->textro = textro;

  hentry = NULL;
  if (entry != NULL)
    {
      hentry = FUNC30 (FUNC29 (info), entry,
				       FALSE, FALSE, TRUE);
      if (hentry != NULL)
	hentry->flags |= XCOFF_ENTRY;
    }

  /* __rtinit */
  if (info->init_function || info->fini_function || rtld)
    {
      struct xcoff_link_hash_entry *hsym;
      struct internal_ldsym *ldsym;

      hsym = FUNC30 (FUNC29 (info),
				     "__rtinit", FALSE, FALSE, TRUE);
      if (hsym == NULL)
	{
	  FUNC4)
	    (FUNC1("error: undefined symbol __rtinit"));
	  return FALSE;
	}

      FUNC33 (info, hsym);
      hsym->flags |= (XCOFF_DEF_REGULAR | XCOFF_RTINIT);

      /* __rtinit initialized.  */
      amt = sizeof (* ldsym);
      ldsym = FUNC12 (amt);

      ldsym->l_value = 0;		/* Will be filled in later.  */
      ldsym->l_scnum = 2;		/* Data section.  */
      ldsym->l_smtype = XTY_SD;		/* Csect section definition.  */
      ldsym->l_smclas = 5;		/* .rw.  */
      ldsym->l_ifile = 0;		/* Special system loader symbol.  */
      ldsym->l_parm = 0;		/* NA.  */

      /* Force __rtinit to be the first symbol in the loader symbol table
	 See xcoff_build_ldsyms

	 The first 3 symbol table indices are reserved to indicate the data,
	 text and bss sections.  */
      FUNC0 (0 == ldinfo.ldsym_count);

      hsym->ldindx = 3;
      ldinfo.ldsym_count = 1;
      hsym->ldsym = ldsym;

      if (! FUNC18 (ldinfo.output_bfd, &ldinfo,
					 hsym->ldsym, hsym->root.root.string))
	return FALSE;

      /* This symbol is written out by xcoff_write_global_symbol
	 Set stuff up so xcoff_write_global_symbol logic works.  */
      hsym->flags |= XCOFF_DEF_REGULAR | XCOFF_MARK;
      hsym->root.type = bfd_link_hash_defined;
      hsym->root.u.def.value = 0;
    }

  /* Garbage collect unused sections.  */
  if (info->relocatable
      || ! gc
      || hentry == NULL
      || (hentry->root.type != bfd_link_hash_defined
	  && hentry->root.type != bfd_link_hash_defweak))
    {
      gc = FALSE;
      FUNC29 (info)->gc = FALSE;

      /* We still need to call xcoff_mark, in order to set ldrel_count
	 correctly.  */
      for (sub = info->input_bfds; sub != NULL; sub = sub->link_next)
	{
	  asection *o;

	  for (o = sub->sections; o != NULL; o = o->next)
	    {
	      if ((o->flags & SEC_MARK) == 0)
		{
		  if (! FUNC32 (info, o))
		    goto error_return;
		}
	    }
	}
    }
  else
    {
      if (! FUNC32 (info, hentry->root.u.def.section))
	goto error_return;
      FUNC34 (info);
      FUNC29 (info)->gc = TRUE;
    }

  /* Return special sections to the caller.  */
  for (i = 0; i < XCOFF_NUMBER_OF_SPECIAL_SECTIONS; i++)
    {
      sec = FUNC29 (info)->special_sections[i];

      if (sec != NULL
	  && gc
	  && (sec->flags & SEC_MARK) == 0)
	sec = NULL;

      special_sections[i] = sec;
    }

  if (info->input_bfds == NULL)
    /* I'm not sure what to do in this bizarre case.  */
    return TRUE;

  FUNC31 (FUNC29 (info), xcoff_build_ldsyms,
			    (void *) &ldinfo);
  if (ldinfo.failed)
    goto error_return;

  /* Work out the size of the import file names.  Each import file ID
     consists of three null terminated strings: the path, the file
     name, and the archive member name.  The first entry in the list
     of names is the path to use to find objects, which the linker has
     passed in as the libpath argument.  For some reason, the path
     entry in the other import file names appears to always be empty.  */
  impsize = FUNC26 (libpath) + 3;
  impcount = 1;
  for (fl = FUNC29 (info)->imports; fl != NULL; fl = fl->next)
    {
      ++impcount;
      impsize += (FUNC26 (fl->path)
		  + FUNC26 (fl->file)
		  + FUNC26 (fl->member)
		  + 3);
    }

  /* Set up the .loader section header.  */
  ldhdr = &FUNC29 (info)->ldhdr;
  ldhdr->l_version = FUNC14(output_bfd);
  ldhdr->l_nsyms = ldinfo.ldsym_count;
  ldhdr->l_nreloc = FUNC29 (info)->ldrel_count;
  ldhdr->l_istlen = impsize;
  ldhdr->l_nimpid = impcount;
  ldhdr->l_impoff = (FUNC15(output_bfd)
		     + ldhdr->l_nsyms * FUNC17(output_bfd)
		     + ldhdr->l_nreloc * FUNC16(output_bfd));
  ldhdr->l_stlen = ldinfo.string_size;
  stoff = ldhdr->l_impoff + impsize;
  if (ldinfo.string_size == 0)
    ldhdr->l_stoff = 0;
  else
    ldhdr->l_stoff = stoff;

  /* 64 bit elements to ldhdr
     The swap out routine for 32 bit will ignore them.
     Nothing fancy, symbols come after the header and relocs come
     after symbols.  */
  ldhdr->l_symoff = FUNC15 (output_bfd);
  ldhdr->l_rldoff = (FUNC15 (output_bfd)
		     + ldhdr->l_nsyms * FUNC17 (output_bfd));

  /* We now know the final size of the .loader section.  Allocate
     space for it.  */
  lsec = FUNC29 (info)->loader_section;
  lsec->size = stoff + ldhdr->l_stlen;
  lsec->contents = FUNC20 (output_bfd, lsec->size);
  if (lsec->contents == NULL)
    goto error_return;

  /* Set up the header.  */
  FUNC19 (output_bfd, ldhdr, lsec->contents);

  /* Set up the import file names.  */
  out = (char *) lsec->contents + ldhdr->l_impoff;
  FUNC25 (out, libpath);
  out += FUNC26 (libpath) + 1;
  *out++ = '\0';
  *out++ = '\0';
  for (fl = FUNC29 (info)->imports; fl != NULL; fl = fl->next)
    {
      const char *s;

      s = fl->path;
      while ((*out++ = *s++) != '\0')
	;
      s = fl->file;
      while ((*out++ = *s++) != '\0')
	;
      s = fl->member;
      while ((*out++ = *s++) != '\0')
	;
    }

  FUNC0 ((bfd_size_type) ((bfd_byte *) out - lsec->contents) == stoff);

  /* Set up the symbol string table.  */
  if (ldinfo.string_size > 0)
    {
      FUNC22 (out, ldinfo.strings, ldinfo.string_size);
      FUNC21 (ldinfo.strings);
      ldinfo.strings = NULL;
    }

  /* We can't set up the symbol table or the relocs yet, because we
     don't yet know the final position of the various sections.  The
     .loader symbols are written out when the corresponding normal
     symbols are written out in xcoff_link_input_bfd or
     xcoff_write_global_symbol.  The .loader relocs are written out
     when the corresponding normal relocs are handled in
     xcoff_link_input_bfd.  */

  /* Allocate space for the magic sections.  */
  sec = FUNC29 (info)->linkage_section;
  if (sec->size > 0)
    {
      sec->contents = FUNC20 (output_bfd, sec->size);
      if (sec->contents == NULL)
	goto error_return;
    }
  sec = FUNC29 (info)->toc_section;
  if (sec->size > 0)
    {
      sec->contents = FUNC20 (output_bfd, sec->size);
      if (sec->contents == NULL)
	goto error_return;
    }
  sec = FUNC29 (info)->descriptor_section;
  if (sec->size > 0)
    {
      sec->contents = FUNC20 (output_bfd, sec->size);
      if (sec->contents == NULL)
	goto error_return;
    }

  /* Now that we've done garbage collection, figure out the contents
     of the .debug section.  */
  debug_strtab = FUNC29 (info)->debug_strtab;

  for (sub = info->input_bfds; sub != NULL; sub = sub->link_next)
    {
      asection *subdeb;
      bfd_size_type symcount;
      unsigned long *debug_index;
      asection **csectpp;
      bfd_byte *esym, *esymend;
      bfd_size_type symesz;

      if (sub->xvec != info->hash->creator)
	continue;
      subdeb = FUNC11 (sub, ".debug");
      if (subdeb == NULL || subdeb->size == 0)
	continue;

      if (info->strip == strip_all
	  || info->strip == strip_debugger
	  || info->discard == discard_all)
	{
	  subdeb->size = 0;
	  continue;
	}

      if (! FUNC3 (sub))
	goto error_return;

      symcount = FUNC24 (sub);
      debug_index = FUNC20 (sub, symcount * sizeof (unsigned long));
      if (debug_index == NULL)
	goto error_return;
      FUNC28 (sub)->debug_indices = debug_index;

      /* Grab the contents of the .debug section.  We use malloc and
	 copy the names into the debug stringtab, rather than
	 bfd_alloc, because I expect that, when linking many files
	 together, many of the strings will be the same.  Storing the
	 strings in the hash table should save space in this case.  */
      if (! FUNC13 (sub, subdeb, &debug_contents))
	goto error_return;

      csectpp = FUNC28 (sub)->csects;

      /* Dynamic object do not have csectpp's.  */
      if (NULL != csectpp)
	{
	  symesz = FUNC8 (sub);
	  esym = (bfd_byte *) FUNC23 (sub);
	  esymend = esym + symcount * symesz;

	  while (esym < esymend)
	    {
	      struct internal_syment sym;

	      FUNC7 (sub, (void *) esym, (void *) &sym);

	      *debug_index = (unsigned long) -1;

	      if (sym._n._n_n._n_zeroes == 0
		  && *csectpp != NULL
		  && (! gc
		      || ((*csectpp)->flags & SEC_MARK) != 0
		      || *csectpp == bfd_abs_section_ptr)
		  && FUNC9 (sub, &sym))
		{
		  char *name;
		  bfd_size_type indx;

		  name = (char *) debug_contents + sym._n._n_n._n_offset;
		  indx = FUNC5 (debug_strtab, name, TRUE, TRUE);
		  if (indx == (bfd_size_type) -1)
		    goto error_return;
		  *debug_index = indx;
		}

	      esym += (sym.n_numaux + 1) * symesz;
	      csectpp += sym.n_numaux + 1;
	      debug_index += sym.n_numaux + 1;
	    }
	}

      FUNC21 (debug_contents);
      debug_contents = NULL;

      /* Clear the size of subdeb, so that it is not included directly
	 in the output file.  */
      subdeb->size = 0;

      if (! info->keep_memory)
	{
	  if (! FUNC2 (sub))
	    goto error_return;
	}
    }

  if (info->strip != strip_all)
    FUNC29 (info)->debug_section->size =
      FUNC6 (debug_strtab);

  return TRUE;

 error_return:
  if (ldinfo.strings != NULL)
    FUNC21 (ldinfo.strings);
  if (debug_contents != NULL)
    FUNC21 (debug_contents);
  return FALSE;
}