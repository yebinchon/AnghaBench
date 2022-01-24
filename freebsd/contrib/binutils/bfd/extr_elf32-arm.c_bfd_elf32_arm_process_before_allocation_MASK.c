#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_13__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
struct TYPE_28__ {int /*<<< orphan*/  type; } ;
struct TYPE_27__ {scalar_t__ offset; } ;
struct elf_link_hash_entry {TYPE_2__ root; int /*<<< orphan*/  type; TYPE_1__ plt; } ;
struct elf32_arm_link_hash_table {int /*<<< orphan*/  use_blx; int /*<<< orphan*/ * splt; scalar_t__ byteswap_code; int /*<<< orphan*/ * bfd_of_glue_owner; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef  scalar_t__ bfd_vma ;
struct TYPE_30__ {int /*<<< orphan*/  r_info; } ;
typedef  TYPE_4__ bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_31__ {TYPE_6__* sections; } ;
typedef  TYPE_5__ bfd ;
struct TYPE_32__ {scalar_t__ reloc_count; int flags; struct TYPE_32__* next; } ;
typedef  TYPE_6__ asection ;
struct TYPE_33__ {unsigned long sh_info; } ;
struct TYPE_29__ {TYPE_4__* contents; } ;
struct TYPE_26__ {TYPE_4__* relocs; TYPE_3__ this_hdr; } ;
struct TYPE_25__ {TYPE_7__ symtab_hdr; } ;
typedef  TYPE_7__ Elf_Internal_Shdr ;
typedef  TYPE_4__ Elf_Internal_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
#define  R_ARM_CALL 132 
#define  R_ARM_JUMP24 131 
#define  R_ARM_PC24 130 
#define  R_ARM_PLT32 129 
#define  R_ARM_THM_CALL 128 
 int SEC_EXCLUDE ; 
 int /*<<< orphan*/  STT_ARM_TFUNC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_4__* FUNC5 (TYPE_5__*,TYPE_6__*,void*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  bfd_link_hash_undefweak ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_6__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC10 (struct elf32_arm_link_hash_table*) ; 
 struct elf32_arm_link_hash_table* FUNC11 (struct bfd_link_info*) ; 
 TYPE_13__* FUNC12 (TYPE_6__*) ; 
 scalar_t__* FUNC13 (TYPE_5__*) ; 
 TYPE_10__* FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (struct bfd_link_info*,struct elf_link_hash_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct bfd_link_info*,struct elf_link_hash_entry*) ; 

bfd_boolean
FUNC18 (bfd *abfd,
					 struct bfd_link_info *link_info)
{
  Elf_Internal_Shdr *symtab_hdr;
  Elf_Internal_Rela *internal_relocs = NULL;
  Elf_Internal_Rela *irel, *irelend;
  bfd_byte *contents = NULL;

  asection *sec;
  struct elf32_arm_link_hash_table *globals;

  /* If we are only performing a partial link do not bother
     to construct any glue.  */
  if (link_info->relocatable)
    return TRUE;

  /* Here we have a bfd that is to be included on the link.  We have a hook
     to do reloc rummaging, before section sizes are nailed down.  */
  globals = FUNC11 (link_info);
  FUNC10 (globals);

  FUNC0 (globals != NULL);
  FUNC0 (globals->bfd_of_glue_owner != NULL);

  if (globals->byteswap_code && !FUNC8 (abfd))
    {
      FUNC6 (FUNC4("%B: BE8 images only valid in big-endian mode."),
			  abfd);
      return FALSE;
    }

  /* Rummage around all the relocs and map the glue vectors.  */
  sec = abfd->sections;

  if (sec == NULL)
    return TRUE;

  for (; sec != NULL; sec = sec->next)
    {
      if (sec->reloc_count == 0)
	continue;

      if ((sec->flags & SEC_EXCLUDE) != 0)
	continue;

      symtab_hdr = &FUNC14 (abfd)->symtab_hdr;

      /* Load the relocs.  */
      internal_relocs
	= FUNC5 (abfd, sec, (void *) NULL,
				     (Elf_Internal_Rela *) NULL, FALSE);

      if (internal_relocs == NULL)
	goto error_return;

      irelend = internal_relocs + sec->reloc_count;
      for (irel = internal_relocs; irel < irelend; irel++)
	{
	  long r_type;
	  unsigned long r_index;

	  struct elf_link_hash_entry *h;

	  r_type = FUNC2 (irel->r_info);
	  r_index = FUNC1 (irel->r_info);

	  /* These are the only relocation types we care about.  */
	  if (   r_type != R_ARM_PC24
	      && r_type != R_ARM_PLT32
	      && r_type != R_ARM_CALL
	      && r_type != R_ARM_JUMP24
	      && r_type != R_ARM_THM_CALL)
	    continue;

	  /* Get the section contents if we haven't done so already.  */
	  if (contents == NULL)
	    {
	      /* Get cached copy if it exists.  */
	      if (FUNC12 (sec)->this_hdr.contents != NULL)
		contents = FUNC12 (sec)->this_hdr.contents;
	      else
		{
		  /* Go get them off disk.  */
		  if (! FUNC9 (abfd, sec, &contents))
		    goto error_return;
		}
	    }

	  /* If the relocation is not against a symbol it cannot concern us.  */
	  h = NULL;

	  /* We don't care about local symbols.  */
	  if (r_index < symtab_hdr->sh_info)
	    continue;

	  /* This is an external symbol.  */
	  r_index -= symtab_hdr->sh_info;
	  h = (struct elf_link_hash_entry *)
	    FUNC13 (abfd)[r_index];

	  /* If the relocation is against a static symbol it must be within
	     the current section and so cannot be a cross ARM/Thumb relocation.  */
	  if (h == NULL)
	    continue;

	  /* If the call will go through a PLT entry then we do not need
	     glue.  */
	  if (globals->splt != NULL && h->plt.offset != (bfd_vma) -1)
	    continue;

	  switch (r_type)
	    {
	    case R_ARM_PC24:
	    case R_ARM_PLT32:
	    case R_ARM_CALL:
	    case R_ARM_JUMP24:
	      /* This one is a call from arm code.  We need to look up
	         the target of the call.  If it is a thumb target, we
	         insert glue.  */
	      if (FUNC3(h->type) == STT_ARM_TFUNC
		  && !(r_type == R_ARM_CALL && globals->use_blx))
		FUNC16 (link_info, h);
	      break;

	    case R_ARM_THM_CALL:
	      /* This one is a call from thumb code.  We look
	         up the target of the call.  If it is not a thumb
                 target, we insert glue.  */
	      if (FUNC3 (h->type) != STT_ARM_TFUNC && !globals->use_blx
		  && h->root.type != bfd_link_hash_undefweak)
		FUNC17 (link_info, h);
	      break;

	    default:
	      FUNC7 ();
	    }
	}

      if (contents != NULL
	  && FUNC12 (sec)->this_hdr.contents != contents)
	FUNC15 (contents);
      contents = NULL;

      if (internal_relocs != NULL
	  && FUNC12 (sec)->relocs != internal_relocs)
	FUNC15 (internal_relocs);
      internal_relocs = NULL;
    }

  return TRUE;

error_return:
  if (contents != NULL
      && FUNC12 (sec)->this_hdr.contents != contents)
    FUNC15 (contents);
  if (internal_relocs != NULL
      && FUNC12 (sec)->relocs != internal_relocs)
    FUNC15 (internal_relocs);

  return FALSE;
}