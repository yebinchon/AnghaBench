#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {scalar_t__ shared; } ;
struct TYPE_11__ {int /*<<< orphan*/ * dynobj; } ;
struct _bfd_sparc_elf_link_hash_table {TYPE_3__* sgot; int /*<<< orphan*/  plt_entry_size; scalar_t__ is_vxworks; int /*<<< orphan*/  plt_header_size; TYPE_1__ elf; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_14__ {scalar_t__ size; scalar_t__ contents; scalar_t__ output_offset; TYPE_8__* output_section; } ;
typedef  TYPE_4__ asection ;
struct TYPE_17__ {scalar_t__ dynamic_sections_created; } ;
struct TYPE_16__ {scalar_t__ vma; } ;
struct TYPE_12__ {int /*<<< orphan*/  sh_entsize; } ;
struct TYPE_15__ {TYPE_2__ this_hdr; } ;
struct TYPE_13__ {scalar_t__ size; TYPE_8__* output_section; int /*<<< orphan*/  contents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct _bfd_sparc_elf_link_hash_table*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct _bfd_sparc_elf_link_hash_table*) ; 
 scalar_t__ SPARC_NOP ; 
 int /*<<< orphan*/  TRUE ; 
 struct _bfd_sparc_elf_link_hash_table* FUNC4 (struct bfd_link_info*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 TYPE_9__* FUNC7 (struct bfd_link_info*) ; 
 TYPE_7__* FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 

bfd_boolean
FUNC13 (bfd *output_bfd, struct bfd_link_info *info)
{
  bfd *dynobj;
  asection *sdyn;
  struct _bfd_sparc_elf_link_hash_table *htab;

  htab = FUNC4 (info);
  dynobj = htab->elf.dynobj;

  sdyn = FUNC5 (dynobj, ".dynamic");

  if (FUNC7 (info)->dynamic_sections_created)
    {
      asection *splt;

      splt = FUNC5 (dynobj, ".plt");
      FUNC1 (splt != NULL && sdyn != NULL);

      if (!FUNC10 (output_bfd, info, dynobj, sdyn, splt))
	return FALSE;

      /* Initialize the contents of the .plt section.  */
      if (splt->size > 0)
	{
	  if (htab->is_vxworks)
	    {
	      if (info->shared)
		FUNC12 (output_bfd, info);
	      else
		FUNC11 (output_bfd, info);
	    }
	  else
	    {
	      FUNC9 (splt->contents, 0, htab->plt_header_size);
	      if (!FUNC0 (output_bfd))
		FUNC6 (output_bfd, (bfd_vma) SPARC_NOP,
			    splt->contents + splt->size - 4);
	    }
	}

      FUNC8 (splt->output_section)->this_hdr.sh_entsize
	= (htab->is_vxworks || !FUNC0 (output_bfd))
	  ? 0 : htab->plt_entry_size;
    }

  /* Set the first entry in the global offset table to the address of
     the dynamic section.  */
  if (htab->sgot && htab->sgot->size > 0)
    {
      bfd_vma val = (sdyn ?
		     sdyn->output_section->vma + sdyn->output_offset :
		     0);

      FUNC2 (htab, output_bfd, val, htab->sgot->contents);
    }

  if (htab->sgot)
    FUNC8 (htab->sgot->output_section)->this_hdr.sh_entsize =
      FUNC3 (htab);

  return TRUE;
}