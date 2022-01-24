#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int id; int flags; int align; int size; int* data; TYPE_4__* sec; TYPE_3__** sympp; TYPE_3__* sym; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ sinfo ;
typedef  int flagword ;
struct TYPE_17__ {char* name; int ordinal; int hint; int /*<<< orphan*/  import_name; int /*<<< orphan*/  noname; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ export_type ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_18__ {scalar_t__ value; void* flags; TYPE_4__* section; void* name; } ;
typedef  TYPE_3__ asymbol ;
struct TYPE_19__ {int reloc_count; TYPE_5__** orelocation; void* name; struct TYPE_19__* output_section; } ;
typedef  TYPE_4__ asection ;
struct TYPE_20__ {int address; TYPE_3__** sym_ptr_ptr; void* howto; int /*<<< orphan*/  addend; } ;
typedef  TYPE_5__ arelent ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_16_GOTOFF ; 
 int /*<<< orphan*/  BFD_RELOC_32 ; 
 int /*<<< orphan*/  BFD_RELOC_32_GOTOFF ; 
 int /*<<< orphan*/  BFD_RELOC_32_PCREL ; 
 int /*<<< orphan*/  BFD_RELOC_RVA ; 
 void* BSF_GLOBAL ; 
 void* BSF_LOCAL ; 
 int /*<<< orphan*/  C_THUMBEXTFUNC ; 
 int EXTRA ; 
 int /*<<< orphan*/  F_INTERWORK ; 
 int /*<<< orphan*/  HOW_BFD_ARCH ; 
 int /*<<< orphan*/  HOW_BFD_READ_TARGET ; 
 int /*<<< orphan*/  HOW_BFD_WRITE_TARGET ; 
 int /*<<< orphan*/  HOW_JTAB ; 
 int HOW_JTAB_ROFF ; 
 int HOW_JTAB_SIZE ; 
#define  IDATA4 134 
#define  IDATA5 133 
#define  IDATA6 132 
#define  IDATA7 131 
 scalar_t__ MARM_INTERWORK ; 
 scalar_t__ MPPC ; 
 scalar_t__ MTHUMB ; 
 scalar_t__ MX86 ; 
 int NSECS ; 
#define  PDATA 130 
#define  RDATA 129 
#define  TEXT 128 
 char* TMP_STUB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_4__*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_3__**,int) ; 
 int /*<<< orphan*/  bfd_und_section ; 
 scalar_t__ create_compat_implib ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 void* head_label ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ machine ; 
 void* FUNC22 (char*,char*) ; 
 void* FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ no_idata4 ; 
 scalar_t__ no_idata5 ; 
 int ppc_glue_insn ; 
 TYPE_1__* secdata ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int FUNC28 (char*) ; 
 char* FUNC29 (int /*<<< orphan*/ ) ; 
 void* FUNC30 (int) ; 

__attribute__((used)) static bfd *
FUNC31 (export_type *exp, int i)
{
  bfd *      abfd;
  asymbol *  exp_label;
  asymbol *  iname = 0;
  asymbol *  iname2;
  asymbol *  iname_lab;
  asymbol ** iname_lab_pp;
  asymbol ** iname_pp;
#ifdef DLLTOOL_PPC
  asymbol ** fn_pp;
  asymbol ** toc_pp;
#define EXTRA	 2
#endif
#ifndef EXTRA
#define EXTRA    0
#endif
  asymbol *  ptrs[NSECS + 4 + EXTRA + 1];
  flagword   applicable;
  char *     outname = FUNC30 (FUNC28 (TMP_STUB) + 10);
  int        oidx = 0;


  FUNC26 (outname, "%s%05d.o", TMP_STUB, i);

  abfd = FUNC8 (outname, HOW_BFD_WRITE_TARGET);

  if (!abfd)
    /* xgettext:c-format */
    FUNC20 (FUNC0("bfd_open failed open stub file: %s"), outname);

  /* xgettext:c-format */
  FUNC21 (FUNC0("Creating stub file: %s"), outname);

  FUNC12 (abfd, bfd_object);
  FUNC11 (abfd, HOW_BFD_ARCH, 0);

#ifdef DLLTOOL_ARM
  if (machine == MARM_INTERWORK || machine == MTHUMB)
    bfd_set_private_flags (abfd, F_INTERWORK);
#endif

  applicable = FUNC2 (abfd);

  /* First make symbols for the sections.  */
  for (i = 0; i < NSECS; i++)
    {
      sinfo *si = secdata + i;

      if (si->id != i)
	FUNC1();
      si->sec = FUNC6 (abfd, si->name);
      FUNC16 (abfd,
			     si->sec,
			     si->flags & applicable);

      FUNC14(abfd, si->sec, si->align);
      si->sec->output_section = si->sec;
      si->sym = FUNC5(abfd);
      si->sym->name = si->sec->name;
      si->sym->section = si->sec;
      si->sym->flags = BSF_LOCAL;
      si->sym->value = 0;
      ptrs[oidx] = si->sym;
      si->sympp = ptrs + oidx;
      si->size = 0;
      si->data = NULL;

      oidx++;
    }

  if (! exp->data)
    {
      exp_label = FUNC5 (abfd);
      exp_label->name = FUNC22 ("", exp->name);

      /* On PowerPC, the function name points to a descriptor in
	 the rdata section, the first element of which is a
	 pointer to the code (..function_name), and the second
	 points to the .toc.  */
#ifdef DLLTOOL_PPC
      if (machine == MPPC)
	exp_label->section = secdata[RDATA].sec;
      else
#endif
	exp_label->section = secdata[TEXT].sec;

      exp_label->flags = BSF_GLOBAL;
      exp_label->value = 0;

#ifdef DLLTOOL_ARM
      if (machine == MTHUMB)
	bfd_coff_set_symbol_class (abfd, exp_label, C_THUMBEXTFUNC);
#endif
      ptrs[oidx++] = exp_label;
    }

  /* Generate imp symbols with one underscore for Microsoft
     compatibility, and with two underscores for backward
     compatibility with old versions of cygwin.  */
  if (create_compat_implib)
    {
      iname = FUNC5 (abfd);
      iname->name = FUNC22 ("___imp", exp->name);
      iname->section = secdata[IDATA5].sec;
      iname->flags = BSF_GLOBAL;
      iname->value = 0;
    }

  iname2 = FUNC5 (abfd);
  iname2->name = FUNC22 ("__imp_", exp->name);
  iname2->section = secdata[IDATA5].sec;
  iname2->flags = BSF_GLOBAL;
  iname2->value = 0;

  iname_lab = FUNC5 (abfd);

  iname_lab->name = head_label;
  iname_lab->section = (asection *) &bfd_und_section;
  iname_lab->flags = 0;
  iname_lab->value = 0;

  iname_pp = ptrs + oidx;
  if (create_compat_implib)
    ptrs[oidx++] = iname;
  ptrs[oidx++] = iname2;

  iname_lab_pp = ptrs + oidx;
  ptrs[oidx++] = iname_lab;

#ifdef DLLTOOL_PPC
  /* The symbol referring to the code (.text).  */
  {
    asymbol *function_name;

    function_name = bfd_make_empty_symbol(abfd);
    function_name->name = make_label ("..", exp->name);
    function_name->section = secdata[TEXT].sec;
    function_name->flags = BSF_GLOBAL;
    function_name->value = 0;

    fn_pp = ptrs + oidx;
    ptrs[oidx++] = function_name;
  }

  /* The .toc symbol.  */
  {
    asymbol *toc_symbol;

    toc_symbol = bfd_make_empty_symbol (abfd);
    toc_symbol->name = make_label (".", "toc");
    toc_symbol->section = (asection *)&bfd_und_section;
    toc_symbol->flags = BSF_GLOBAL;
    toc_symbol->value = 0;

    toc_pp = ptrs + oidx;
    ptrs[oidx++] = toc_symbol;
  }
#endif

  ptrs[oidx] = 0;

  for (i = 0; i < NSECS; i++)
    {
      sinfo *si = secdata + i;
      asection *sec = si->sec;
      arelent *rel;
      arelent **rpp;

      switch (i)
	{
	case TEXT:
	  if (! exp->data)
	    {
	      si->size = HOW_JTAB_SIZE;
	      si->data = FUNC30 (HOW_JTAB_SIZE);
	      FUNC24 (si->data, HOW_JTAB, HOW_JTAB_SIZE);

	      /* Add the reloc into idata$5.  */
	      rel = FUNC30 (sizeof (arelent));

	      rpp = FUNC30 (sizeof (arelent *) * 2);
	      rpp[0] = rel;
	      rpp[1] = 0;

	      rel->address = HOW_JTAB_ROFF;
	      rel->addend = 0;

	      if (machine == MPPC)
		{
		  rel->howto = FUNC10 (abfd,
						      BFD_RELOC_16_GOTOFF);
		  rel->sym_ptr_ptr = iname_pp;
		}
	      else if (machine == MX86)
		{
		  rel->howto = FUNC10 (abfd,
						      BFD_RELOC_32_PCREL);
		  rel->sym_ptr_ptr = iname_pp;
		}
	      else
		{
		  rel->howto = FUNC10 (abfd, BFD_RELOC_32);
		  rel->sym_ptr_ptr = secdata[IDATA5].sympp;
		}
	      sec->orelocation = rpp;
	      sec->reloc_count = 1;
	    }
	  break;
	case IDATA4:
	case IDATA5:
	  /* An idata$4 or idata$5 is one word long, and has an
	     rva to idata$6.  */

#ifdef DLLTOOL_MX86_64
	  si->data = xmalloc (8);
	  si->size = 8;

	  if (exp->noname)
	    {
	      si->data[0] = exp->ordinal ;
	      si->data[1] = exp->ordinal >> 8;
	      si->data[2] = exp->ordinal >> 16;
	      si->data[3] = exp->ordinal >> 24;
	      si->data[4] = 0;
	      si->data[5] = 0;
	      si->data[6] = 0;
	      si->data[7] = 0x80;
	    }
	  else
	    {
	      sec->reloc_count = 1;
	      memset (si->data, 0, si->size);
	      rel = xmalloc (sizeof (arelent));
	      rpp = xmalloc (sizeof (arelent *) * 2);
	      rpp[0] = rel;
	      rpp[1] = 0;
	      rel->address = 0;
	      rel->addend = 0;
	      rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_RVA);
	      rel->sym_ptr_ptr = secdata[IDATA6].sympp;
	      sec->orelocation = rpp;
	    }
#else
	  si->data = FUNC30 (4);
	  si->size = 4;

	  if (exp->noname)
	    {
	      si->data[0] = exp->ordinal ;
	      si->data[1] = exp->ordinal >> 8;
	      si->data[2] = exp->ordinal >> 16;
	      si->data[3] = 0x80;
	    }
	  else
	    {
	      sec->reloc_count = 1;
	      FUNC25 (si->data, 0, si->size);
	      rel = FUNC30 (sizeof (arelent));
	      rpp = FUNC30 (sizeof (arelent *) * 2);
	      rpp[0] = rel;
	      rpp[1] = 0;
	      rel->address = 0;
	      rel->addend = 0;
	      rel->howto = FUNC10 (abfd, BFD_RELOC_RVA);
	      rel->sym_ptr_ptr = secdata[IDATA6].sympp;
	      sec->orelocation = rpp;
	    }
#endif
	  break;

	case IDATA6:
	  if (!exp->noname)
	    {
	      /* This used to add 1 to exp->hint.  I don't know
		 why it did that, and it does not match what I see
		 in programs compiled with the MS tools.  */
	      int idx = exp->hint;
	      si->size = FUNC28 (FUNC29 (exp->import_name)) + 3;
	      si->data = FUNC30 (si->size);
	      si->data[0] = idx & 0xff;
	      si->data[1] = idx >> 8;
	      FUNC27 ((char *) si->data + 2, FUNC29 (exp->import_name));
	    }
	  break;
	case IDATA7:
	  si->size = 4;
	  si->data = FUNC30 (4);
	  FUNC25 (si->data, 0, si->size);
	  rel = FUNC30 (sizeof (arelent));
	  rpp = FUNC30 (sizeof (arelent *) * 2);
	  rpp[0] = rel;
	  rel->address = 0;
	  rel->addend = 0;
	  rel->howto = FUNC10 (abfd, BFD_RELOC_RVA);
	  rel->sym_ptr_ptr = iname_lab_pp;
	  sec->orelocation = rpp;
	  sec->reloc_count = 1;
	  break;

#ifdef DLLTOOL_PPC
	case PDATA:
	  {
	    /* The .pdata section is 5 words long.
	       Think of it as:
	       struct
	       {
	       bfd_vma BeginAddress,     [0x00]
	       EndAddress,       [0x04]
	       ExceptionHandler, [0x08]
	       HandlerData,      [0x0c]
	       PrologEndAddress; [0x10]
	       };  */

	    /* So this pdata section setups up this as a glue linkage to
	       a dll routine. There are a number of house keeping things
	       we need to do:

	       1. In the name of glue trickery, the ADDR32 relocs for 0,
	       4, and 0x10 are set to point to the same place:
	       "..function_name".
	       2. There is one more reloc needed in the pdata section.
	       The actual glue instruction to restore the toc on
	       return is saved as the offset in an IMGLUE reloc.
	       So we need a total of four relocs for this section.

	       3. Lastly, the HandlerData field is set to 0x03, to indicate
	       that this is a glue routine.  */
	    arelent *imglue, *ba_rel, *ea_rel, *pea_rel;

	    /* Alignment must be set to 2**2 or you get extra stuff.  */
	    bfd_set_section_alignment(abfd, sec, 2);

	    si->size = 4 * 5;
	    si->data = xmalloc (si->size);
	    memset (si->data, 0, si->size);
	    rpp = xmalloc (sizeof (arelent *) * 5);
	    rpp[0] = imglue  = xmalloc (sizeof (arelent));
	    rpp[1] = ba_rel  = xmalloc (sizeof (arelent));
	    rpp[2] = ea_rel  = xmalloc (sizeof (arelent));
	    rpp[3] = pea_rel = xmalloc (sizeof (arelent));
	    rpp[4] = 0;

	    /* Stick the toc reload instruction in the glue reloc.  */
	    bfd_put_32(abfd, ppc_glue_insn, (char *) &imglue->address);

	    imglue->addend = 0;
	    imglue->howto = bfd_reloc_type_lookup (abfd,
						   BFD_RELOC_32_GOTOFF);
	    imglue->sym_ptr_ptr = fn_pp;

	    ba_rel->address = 0;
	    ba_rel->addend = 0;
	    ba_rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_32);
	    ba_rel->sym_ptr_ptr = fn_pp;

	    bfd_put_32 (abfd, 0x18, si->data + 0x04);
	    ea_rel->address = 4;
	    ea_rel->addend = 0;
	    ea_rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_32);
	    ea_rel->sym_ptr_ptr = fn_pp;

	    /* Mark it as glue.  */
	    bfd_put_32 (abfd, 0x03, si->data + 0x0c);

	    /* Mark the prolog end address.  */
	    bfd_put_32 (abfd, 0x0D, si->data + 0x10);
	    pea_rel->address = 0x10;
	    pea_rel->addend = 0;
	    pea_rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_32);
	    pea_rel->sym_ptr_ptr = fn_pp;

	    sec->orelocation = rpp;
	    sec->reloc_count = 4;
	    break;
	  }
	case RDATA:
	  /* Each external function in a PowerPC PE file has a two word
	     descriptor consisting of:
	     1. The address of the code.
	     2. The address of the appropriate .toc
	     We use relocs to build this.  */
	  si->size = 8;
	  si->data = xmalloc (8);
	  memset (si->data, 0, si->size);

	  rpp = xmalloc (sizeof (arelent *) * 3);
	  rpp[0] = rel = xmalloc (sizeof (arelent));
	  rpp[1] = xmalloc (sizeof (arelent));
	  rpp[2] = 0;

	  rel->address = 0;
	  rel->addend = 0;
	  rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_32);
	  rel->sym_ptr_ptr = fn_pp;

	  rel = rpp[1];

	  rel->address = 4;
	  rel->addend = 0;
	  rel->howto = bfd_reloc_type_lookup (abfd, BFD_RELOC_32);
	  rel->sym_ptr_ptr = toc_pp;

	  sec->orelocation = rpp;
	  sec->reloc_count = 2;
	  break;
#endif /* DLLTOOL_PPC */
	}
    }

  {
    bfd_vma vma = 0;
    /* Size up all the sections.  */
    for (i = 0; i < NSECS; i++)
      {
	sinfo *si = secdata + i;

	FUNC17 (abfd, si->sec, si->size);
	FUNC18 (abfd, si->sec, vma);
      }
  }
  /* Write them out.  */
  for (i = 0; i < NSECS; i++)
    {
      sinfo *si = secdata + i;

      if (i == IDATA5 && no_idata5)
	continue;

      if (i == IDATA4 && no_idata4)
	continue;

      FUNC15 (abfd, si->sec,
				si->data, 0,
				si->size);
    }

  FUNC19 (abfd, ptrs, oidx);
  FUNC3 (abfd);
  abfd = FUNC7 (outname, HOW_BFD_READ_TARGET);
  return abfd;
}