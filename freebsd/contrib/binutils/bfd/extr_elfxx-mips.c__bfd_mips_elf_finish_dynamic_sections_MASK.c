#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_80__   TYPE_9__ ;
typedef  struct TYPE_79__   TYPE_8__ ;
typedef  struct TYPE_78__   TYPE_7__ ;
typedef  struct TYPE_77__   TYPE_6__ ;
typedef  struct TYPE_76__   TYPE_5__ ;
typedef  struct TYPE_75__   TYPE_4__ ;
typedef  struct TYPE_74__   TYPE_44__ ;
typedef  struct TYPE_73__   TYPE_43__ ;
typedef  struct TYPE_72__   TYPE_42__ ;
typedef  struct TYPE_71__   TYPE_40__ ;
typedef  struct TYPE_70__   TYPE_3__ ;
typedef  struct TYPE_69__   TYPE_30__ ;
typedef  struct TYPE_68__   TYPE_2__ ;
typedef  struct TYPE_67__   TYPE_1__ ;
typedef  struct TYPE_66__   TYPE_14__ ;
typedef  struct TYPE_65__   TYPE_13__ ;
typedef  struct TYPE_64__   TYPE_11__ ;
typedef  struct TYPE_63__   TYPE_10__ ;

/* Type definitions */
typedef  int time_t ;
struct mips_got_info {scalar_t__ local_gotno; scalar_t__ global_gotno; scalar_t__ tls_gotno; scalar_t__ assigned_gotno; struct mips_got_info* next; TYPE_2__* global_gotsym; } ;
struct mips_elf_link_hash_table {int is_vxworks; scalar_t__ rld_value; int function_stub_size; TYPE_8__* splt; TYPE_4__* srelplt; } ;
struct bfd_link_info {int flags; scalar_t__ shared; } ;
typedef  int /*<<< orphan*/  rel ;
typedef  int file_ptr ;
typedef  scalar_t__ bfd_vma ;
struct TYPE_80__ {int r_offset; int /*<<< orphan*/  r_info; } ;
typedef  TYPE_9__ bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_63__ {TYPE_11__* sections; } ;
typedef  TYPE_10__ bfd ;
struct TYPE_64__ {int size; int output_offset; scalar_t__ vma; int reloc_count; TYPE_9__* contents; TYPE_43__* output_section; } ;
typedef  TYPE_11__ asection ;
struct TYPE_79__ {scalar_t__ size; } ;
struct TYPE_78__ {int /*<<< orphan*/  (* swap_dyn_out ) (TYPE_10__*,TYPE_13__*,TYPE_9__*) ;int /*<<< orphan*/  (* swap_dyn_in ) (TYPE_10__*,TYPE_9__*,TYPE_13__*) ;} ;
struct TYPE_77__ {int d_val; int d_ptr; } ;
struct TYPE_76__ {int sh_entsize; int sh_size; } ;
struct TYPE_75__ {scalar_t__ size; scalar_t__ output_offset; TYPE_3__* output_section; } ;
struct TYPE_74__ {scalar_t__ dynamic_sections_created; int /*<<< orphan*/  dynstr; TYPE_10__* dynobj; } ;
struct TYPE_73__ {int vma; scalar_t__ filepos; } ;
struct TYPE_72__ {TYPE_5__ this_hdr; } ;
struct TYPE_71__ {TYPE_7__* s; } ;
struct TYPE_70__ {scalar_t__ vma; } ;
struct TYPE_67__ {struct mips_got_info* got_info; } ;
struct TYPE_69__ {TYPE_1__ u; } ;
struct TYPE_68__ {scalar_t__ dynindx; } ;
struct TYPE_66__ {int id1; int num; int id2; scalar_t__ reserved1; scalar_t__ reserved0; scalar_t__ offset; } ;
struct TYPE_65__ {int d_tag; TYPE_6__ d_un; } ;
typedef  TYPE_9__ Elf_Internal_Rela ;
typedef  TYPE_13__ Elf_Internal_Dyn ;
typedef  int /*<<< orphan*/  Elf64_Mips_External_Rel ;
typedef  int /*<<< orphan*/  Elf64_External_Rel ;
typedef  TYPE_14__ Elf32_compact_rel ;
typedef  int /*<<< orphan*/  Elf32_External_compact_rel ;
typedef  int /*<<< orphan*/  Elf32_External_Rel ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DF_TEXTREL ; 
#define  DT_FLAGS 151 
#define  DT_JMPREL 150 
#define  DT_MIPS_BASE_ADDRESS 149 
#define  DT_MIPS_FLAGS 148 
#define  DT_MIPS_GOTSYM 147 
#define  DT_MIPS_HIPAGENO 146 
#define  DT_MIPS_ICHECKSUM 145 
#define  DT_MIPS_IVERSION 144 
#define  DT_MIPS_LOCAL_GOTNO 143 
#define  DT_MIPS_OPTIONS 142 
#define  DT_MIPS_RLD_MAP 141 
#define  DT_MIPS_RLD_VERSION 140 
#define  DT_MIPS_SYMTABNO 139 
#define  DT_MIPS_TIME_STAMP 138 
#define  DT_MIPS_UNREFEXTNO 137 
#define  DT_PLTGOT 136 
#define  DT_PLTREL 135 
#define  DT_PLTRELSZ 134 
 scalar_t__ DT_RELA ; 
#define  DT_RELAENT 133 
#define  DT_RELASZ 132 
#define  DT_RELENT 131 
#define  DT_RELSZ 130 
#define  DT_STRSZ 129 
#define  DT_TEXTREL 128 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int FUNC3 (TYPE_10__*) ; 
 int FUNC4 (TYPE_10__*) ; 
 char* FUNC5 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,int,TYPE_9__*) ; 
 int FUNC7 (TYPE_10__*) ; 
 scalar_t__ FUNC8 (TYPE_10__*) ; 
 char* FUNC9 (TYPE_10__*) ; 
 size_t FUNC10 (TYPE_10__*) ; 
 scalar_t__ FUNC11 (struct bfd_link_info*) ; 
 int RHF_NOTPOT ; 
 int /*<<< orphan*/  R_MIPS_REL32 ; 
 scalar_t__ FUNC12 (TYPE_10__*) ; 
 scalar_t__ TRUE ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_abs_section_ptr ; 
 int /*<<< orphan*/  FUNC14 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_10__*,TYPE_14__*,int /*<<< orphan*/ *) ; 
 TYPE_11__* FUNC16 (TYPE_10__*,char const*) ; 
 TYPE_44__* FUNC17 (struct bfd_link_info*) ; 
 TYPE_42__* FUNC18 (TYPE_43__*) ; 
 TYPE_40__* FUNC19 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_10__*,struct bfd_link_info*,TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,TYPE_11__*) ; 
 struct mips_got_info* FUNC22 (struct mips_got_info*,TYPE_10__*) ; 
 TYPE_11__* FUNC23 (TYPE_10__*,scalar_t__) ; 
 struct mips_elf_link_hash_table* FUNC24 (struct bfd_link_info*) ; 
 TYPE_11__* FUNC25 (struct bfd_link_info*,scalar_t__) ; 
 TYPE_30__* FUNC26 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_10__*,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_10__*,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 TYPE_10__* reldyn_sorting_bfd ; 
 int /*<<< orphan*/  sort_dynamic_relocs ; 
 int /*<<< orphan*/  sort_dynamic_relocs_64 ; 
 int /*<<< orphan*/  FUNC30 (TYPE_10__*,TYPE_9__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_10__*,TYPE_13__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_10__*,TYPE_9__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_10__*,TYPE_13__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC34 (int*) ; 

bfd_boolean
FUNC35 (bfd *output_bfd,
				       struct bfd_link_info *info)
{
  bfd *dynobj;
  asection *sdyn;
  asection *sgot;
  struct mips_got_info *gg, *g;
  struct mips_elf_link_hash_table *htab;

  htab = FUNC24 (info);
  dynobj = FUNC17 (info)->dynobj;

  sdyn = FUNC16 (dynobj, ".dynamic");

  sgot = FUNC23 (dynobj, FALSE);
  if (sgot == NULL)
    gg = g = NULL;
  else
    {
      FUNC1 (FUNC26 (sgot) != NULL);
      gg = FUNC26 (sgot)->u.got_info;
      FUNC1 (gg != NULL);
      g = FUNC22 (gg, output_bfd);
      FUNC1 (g != NULL);
    }

  if (FUNC17 (info)->dynamic_sections_created)
    {
      bfd_byte *b;
      int dyn_to_skip = 0, dyn_skipped = 0;

      FUNC1 (sdyn != NULL);
      FUNC1 (g != NULL);

      for (b = sdyn->contents;
	   b < sdyn->contents + sdyn->size;
	   b += FUNC3 (dynobj))
	{
	  Elf_Internal_Dyn dyn;
	  const char *name;
	  size_t elemsize;
	  asection *s;
	  bfd_boolean swap_out_p;

	  /* Read in the current dynamic entry.  */
	  (*FUNC19 (dynobj)->s->swap_dyn_in) (dynobj, b, &dyn);

	  /* Assume that we're going to modify it and write it out.  */
	  swap_out_p = TRUE;

	  switch (dyn.d_tag)
	    {
	    case DT_RELENT:
	      dyn.d_un.d_val = FUNC8 (dynobj);
	      break;

	    case DT_RELAENT:
	      FUNC1 (htab->is_vxworks);
	      dyn.d_un.d_val = FUNC7 (dynobj);
	      break;

	    case DT_STRSZ:
	      /* Rewrite DT_STRSZ.  */
	      dyn.d_un.d_val =
		FUNC13 (FUNC17 (info)->dynstr);
	      break;

	    case DT_PLTGOT:
	      name = ".got";
	      if (htab->is_vxworks)
		{
		  /* _GLOBAL_OFFSET_TABLE_ is defined to be the beginning
		     of the ".got" section in DYNOBJ.  */
		  s = FUNC16 (dynobj, name);
		  FUNC1 (s != NULL);
		  dyn.d_un.d_ptr = s->output_section->vma + s->output_offset;
		}
	      else
		{
		  s = FUNC16 (output_bfd, name);
		  FUNC1 (s != NULL);
		  dyn.d_un.d_ptr = s->vma;
		}
	      break;

	    case DT_MIPS_RLD_VERSION:
	      dyn.d_un.d_val = 1; /* XXX */
	      break;

	    case DT_MIPS_FLAGS:
	      dyn.d_un.d_val = RHF_NOTPOT; /* XXX */
	      break;

	    case DT_MIPS_TIME_STAMP:
	      {
		time_t t;
		FUNC34 (&t);
		dyn.d_un.d_val = t;
	      }
	      break;

	    case DT_MIPS_ICHECKSUM:
	      /* XXX FIXME: */
	      swap_out_p = FALSE;
	      break;

	    case DT_MIPS_IVERSION:
	      /* XXX FIXME: */
	      swap_out_p = FALSE;
	      break;

	    case DT_MIPS_BASE_ADDRESS:
	      s = output_bfd->sections;
	      FUNC1 (s != NULL);
	      dyn.d_un.d_ptr = s->vma & ~(bfd_vma) 0xffff;
	      break;

	    case DT_MIPS_LOCAL_GOTNO:
	      dyn.d_un.d_val = g->local_gotno;
	      break;

	    case DT_MIPS_UNREFEXTNO:
	      /* The index into the dynamic symbol table which is the
		 entry of the first external symbol that is not
		 referenced within the same object.  */
	      dyn.d_un.d_val = FUNC14 (output_bfd) + 1;
	      break;

	    case DT_MIPS_GOTSYM:
	      if (gg->global_gotsym)
		{
		  dyn.d_un.d_val = gg->global_gotsym->dynindx;
		  break;
		}
	      /* In case if we don't have global got symbols we default
		 to setting DT_MIPS_GOTSYM to the same value as
		 DT_MIPS_SYMTABNO, so we just fall through.  */

	    case DT_MIPS_SYMTABNO:
	      name = ".dynsym";
	      elemsize = FUNC10 (output_bfd);
	      s = FUNC16 (output_bfd, name);
	      FUNC1 (s != NULL);

	      dyn.d_un.d_val = s->size / elemsize;
	      break;

	    case DT_MIPS_HIPAGENO:
	      dyn.d_un.d_val = g->local_gotno - FUNC11 (info);
	      break;

	    case DT_MIPS_RLD_MAP:
	      dyn.d_un.d_ptr = FUNC24 (info)->rld_value;
	      break;

	    case DT_MIPS_OPTIONS:
	      s = (FUNC16
		   (output_bfd, FUNC5 (output_bfd)));
	      dyn.d_un.d_ptr = s->vma;
	      break;

	    case DT_RELASZ:
	      FUNC1 (htab->is_vxworks);
	      /* The count does not include the JUMP_SLOT relocations.  */
	      if (htab->srelplt)
		dyn.d_un.d_val -= htab->srelplt->size;
	      break;

	    case DT_PLTREL:
	      FUNC1 (htab->is_vxworks);
	      dyn.d_un.d_val = DT_RELA;
	      break;

	    case DT_PLTRELSZ:
	      FUNC1 (htab->is_vxworks);
	      dyn.d_un.d_val = htab->srelplt->size;
	      break;

	    case DT_JMPREL:
	      FUNC1 (htab->is_vxworks);
	      dyn.d_un.d_val = (htab->srelplt->output_section->vma
				+ htab->srelplt->output_offset);
	      break;

	    case DT_TEXTREL:
	      /* If we didn't need any text relocations after all, delete
		 the dynamic tag.  */
	      if (!(info->flags & DF_TEXTREL))
		{
		  dyn_to_skip = FUNC3 (dynobj);
		  swap_out_p = FALSE;
		}
	      break;

	    case DT_FLAGS:
	      /* If we didn't need any text relocations after all, clear
		 DF_TEXTREL from DT_FLAGS.  */
	      if (!(info->flags & DF_TEXTREL))
		dyn.d_un.d_val &= ~DF_TEXTREL;
	      else
		swap_out_p = FALSE;
	      break;

	    default:
	      swap_out_p = FALSE;
	      break;
	    }

	  if (swap_out_p || dyn_skipped)
	    (*FUNC19 (dynobj)->s->swap_dyn_out)
	      (dynobj, &dyn, b - dyn_skipped);

	  if (dyn_to_skip)
	    {
	      dyn_skipped += dyn_to_skip;
	      dyn_to_skip = 0;
	    }
	}

      /* Wipe out any trailing entries if we shifted down a dynamic tag.  */
      if (dyn_skipped > 0)
	FUNC20 (b - dyn_skipped, 0, dyn_skipped);
    }

  if (sgot != NULL && sgot->size > 0)
    {
      if (htab->is_vxworks)
	{
	  /* The first entry of the global offset table points to the
	     ".dynamic" section.  The second is initialized by the
	     loader and contains the shared library identifier.
	     The third is also initialized by the loader and points
	     to the lazy resolution stub.  */
	  FUNC6 (output_bfd,
			     sdyn->output_offset + sdyn->output_section->vma,
			     sgot->contents);
	  FUNC6 (output_bfd, 0,
			     sgot->contents + FUNC4 (output_bfd));
	  FUNC6 (output_bfd, 0,
			     sgot->contents
			     + 2 * FUNC4 (output_bfd));
	}
      else
	{
	  /* The first entry of the global offset table will be filled at
	     runtime. The second entry will be used by some runtime loaders.
	     This isn't the case of IRIX rld.  */
	  FUNC6 (output_bfd, (bfd_vma) 0, sgot->contents);
	  FUNC6 (output_bfd, (bfd_vma) 0x80000000,
			     sgot->contents + FUNC4 (output_bfd));
	}

      FUNC18 (sgot->output_section)->this_hdr.sh_entsize
	 = FUNC4 (output_bfd);
    }

  /* Generate dynamic relocations for the non-primary gots.  */
  if (gg != NULL && gg->next)
    {
      Elf_Internal_Rela rel[3];
      bfd_vma addend = 0;

      FUNC20 (rel, 0, sizeof (rel));
      rel[0].r_info = FUNC2 (output_bfd, 0, R_MIPS_REL32);

      for (g = gg->next; g->next != gg; g = g->next)
	{
	  bfd_vma index = g->next->local_gotno + g->next->global_gotno
	    + g->next->tls_gotno;

	  FUNC6 (output_bfd, 0, sgot->contents
			     + index++ * FUNC4 (output_bfd));
	  FUNC6 (output_bfd, 0x80000000, sgot->contents
			     + index++ * FUNC4 (output_bfd));

	  if (! info->shared)
	    continue;

	  while (index < g->assigned_gotno)
	    {
	      rel[0].r_offset = rel[1].r_offset = rel[2].r_offset
		= index++ * FUNC4 (output_bfd);
	      if (!(FUNC21
		    (output_bfd, info, rel, NULL,
		     bfd_abs_section_ptr,
		     0, &addend, sgot)))
		return FALSE;
	      FUNC1 (addend == 0);
	    }
	}
    }

  /* The generation of dynamic relocations for the non-primary gots
     adds more dynamic relocations.  We cannot count them until
     here.  */

  if (FUNC17 (info)->dynamic_sections_created)
    {
      bfd_byte *b;
      bfd_boolean swap_out_p;

      FUNC1 (sdyn != NULL);

      for (b = sdyn->contents;
	   b < sdyn->contents + sdyn->size;
	   b += FUNC3 (dynobj))
	{
	  Elf_Internal_Dyn dyn;
	  asection *s;

	  /* Read in the current dynamic entry.  */
	  (*FUNC19 (dynobj)->s->swap_dyn_in) (dynobj, b, &dyn);

	  /* Assume that we're going to modify it and write it out.  */
	  swap_out_p = TRUE;

	  switch (dyn.d_tag)
	    {
	    case DT_RELSZ:
	      /* Reduce DT_RELSZ to account for any relocations we
		 decided not to make.  This is for the n64 irix rld,
		 which doesn't seem to apply any relocations if there
		 are trailing null entries.  */
	      s = FUNC25 (info, FALSE);
	      dyn.d_un.d_val = (s->reloc_count
				* (FUNC0 (output_bfd)
				   ? sizeof (Elf64_Mips_External_Rel)
				   : sizeof (Elf32_External_Rel)));
	      /* Adjust the section size too.  Tools like the prelinker
		 can reasonably expect the values to the same.  */
	      FUNC18 (s->output_section)->this_hdr.sh_size
		= dyn.d_un.d_val;
	      break;

	    default:
	      swap_out_p = FALSE;
	      break;
	    }

	  if (swap_out_p)
	    (*FUNC19 (dynobj)->s->swap_dyn_out)
	      (dynobj, &dyn, b);
	}
    }

  {
    asection *s;
    Elf32_compact_rel cpt;

    if (FUNC12 (output_bfd))
      {
	/* Write .compact_rel section out.  */
	s = FUNC16 (dynobj, ".compact_rel");
	if (s != NULL)
	  {
	    cpt.id1 = 1;
	    cpt.num = s->reloc_count;
	    cpt.id2 = 2;
	    cpt.offset = (s->output_section->filepos
			  + sizeof (Elf32_External_compact_rel));
	    cpt.reserved0 = 0;
	    cpt.reserved1 = 0;
	    FUNC15 (output_bfd, &cpt,
					    ((Elf32_External_compact_rel *)
					     s->contents));

	    /* Clean up a dummy stub function entry in .text.  */
	    s = FUNC16 (dynobj,
					 FUNC9 (dynobj));
	    if (s != NULL)
	      {
		file_ptr dummy_offset;

		FUNC1 (s->size >= htab->function_stub_size);
		dummy_offset = s->size - htab->function_stub_size;
		FUNC20 (s->contents + dummy_offset, 0,
			htab->function_stub_size);
	      }
	  }
      }

    /* The psABI says that the dynamic relocations must be sorted in
       increasing order of r_symndx.  The VxWorks EABI doesn't require
       this, and because the code below handles REL rather than RELA
       relocations, using it for VxWorks would be outright harmful.  */
    if (!htab->is_vxworks)
      {
	s = FUNC25 (info, FALSE);
	if (s != NULL
	    && s->size > (bfd_vma)2 * FUNC8 (output_bfd))
	  {
	    reldyn_sorting_bfd = output_bfd;

	    if (FUNC0 (output_bfd))
	      FUNC29 ((Elf64_External_Rel *) s->contents + 1,
		     s->reloc_count - 1, sizeof (Elf64_Mips_External_Rel),
		     sort_dynamic_relocs_64);
	    else
	      FUNC29 ((Elf32_External_Rel *) s->contents + 1,
		     s->reloc_count - 1, sizeof (Elf32_External_Rel),
		     sort_dynamic_relocs);
	  }
      }
  }

  if (htab->is_vxworks && htab->splt->size > 0)
    {
      if (info->shared)
	FUNC28 (output_bfd, info);
      else
	FUNC27 (output_bfd, info);
    }
  return TRUE;
}