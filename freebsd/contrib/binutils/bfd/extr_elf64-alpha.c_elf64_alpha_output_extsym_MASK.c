#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct extsym_info {scalar_t__ failed; int /*<<< orphan*/  swap; int /*<<< orphan*/  debug; int /*<<< orphan*/  abfd; TYPE_3__* info; } ;
struct TYPE_23__ {scalar_t__ sc; scalar_t__ value; int /*<<< orphan*/  index; scalar_t__ reserved; int /*<<< orphan*/  st; } ;
struct TYPE_14__ {int ifd; TYPE_9__ asym; scalar_t__ reserved; scalar_t__ weakext; scalar_t__ cobol_main; scalar_t__ jmptbl; } ;
struct TYPE_18__ {int /*<<< orphan*/  string; } ;
struct TYPE_19__ {scalar_t__ value; TYPE_10__* section; } ;
struct TYPE_15__ {scalar_t__ size; } ;
struct TYPE_16__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_5__ def; TYPE_1__ c; TYPE_2__ i; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_4__ root; TYPE_6__ u; } ;
struct TYPE_22__ {int indx; TYPE_7__ root; int /*<<< orphan*/  ref_regular; int /*<<< orphan*/  def_regular; scalar_t__ ref_dynamic; scalar_t__ def_dynamic; } ;
struct alpha_elf_link_hash_entry {TYPE_12__ esym; TYPE_8__ root; } ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_13__ {scalar_t__ vma; scalar_t__ output_offset; struct TYPE_13__* output_section; int /*<<< orphan*/  owner; } ;
typedef  TYPE_10__ asection ;
struct TYPE_17__ {scalar_t__ strip; int /*<<< orphan*/  keep_hash; } ;
typedef  scalar_t__ PTR ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_12__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ bfd_link_hash_common ; 
 scalar_t__ bfd_link_hash_defined ; 
 scalar_t__ bfd_link_hash_defweak ; 
 scalar_t__ bfd_link_hash_new ; 
 scalar_t__ bfd_link_hash_warning ; 
 char* FUNC2 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int ifdNil ; 
 int /*<<< orphan*/  indexNil ; 
 void* scAbs ; 
 void* scBss ; 
 scalar_t__ scCommon ; 
 scalar_t__ scData ; 
 scalar_t__ scFini ; 
 scalar_t__ scInit ; 
 scalar_t__ scRData ; 
 void* scSBss ; 
 scalar_t__ scSCommon ; 
 scalar_t__ scSData ; 
 scalar_t__ scText ; 
 scalar_t__ scUndefined ; 
 int /*<<< orphan*/  stGlobal ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ strip_all ; 
 scalar_t__ strip_some ; 

__attribute__((used)) static bfd_boolean
FUNC4 (struct alpha_elf_link_hash_entry *h, PTR data)
{
  struct extsym_info *einfo = (struct extsym_info *) data;
  bfd_boolean strip;
  asection *sec, *output_section;

  if (h->root.root.type == bfd_link_hash_warning)
    h = (struct alpha_elf_link_hash_entry *) h->root.root.u.i.link;

  if (h->root.indx == -2)
    strip = FALSE;
  else if ((h->root.def_dynamic
	    || h->root.ref_dynamic
	    || h->root.root.type == bfd_link_hash_new)
	   && !h->root.def_regular
	   && !h->root.ref_regular)
    strip = TRUE;
  else if (einfo->info->strip == strip_all
	   || (einfo->info->strip == strip_some
	       && FUNC1 (einfo->info->keep_hash,
				   h->root.root.root.string,
				   FALSE, FALSE) == NULL))
    strip = TRUE;
  else
    strip = FALSE;

  if (strip)
    return TRUE;

  if (h->esym.ifd == -2)
    {
      h->esym.jmptbl = 0;
      h->esym.cobol_main = 0;
      h->esym.weakext = 0;
      h->esym.reserved = 0;
      h->esym.ifd = ifdNil;
      h->esym.asym.value = 0;
      h->esym.asym.st = stGlobal;

      if (h->root.root.type != bfd_link_hash_defined
	  && h->root.root.type != bfd_link_hash_defweak)
	h->esym.asym.sc = scAbs;
      else
	{
	  const char *name;

	  sec = h->root.root.u.def.section;
	  output_section = sec->output_section;

	  /* When making a shared library and symbol h is the one from
	     the another shared library, OUTPUT_SECTION may be null.  */
	  if (output_section == NULL)
	    h->esym.asym.sc = scUndefined;
	  else
	    {
	      name = FUNC2 (output_section->owner, output_section);

	      if (FUNC3 (name, ".text") == 0)
		h->esym.asym.sc = scText;
	      else if (FUNC3 (name, ".data") == 0)
		h->esym.asym.sc = scData;
	      else if (FUNC3 (name, ".sdata") == 0)
		h->esym.asym.sc = scSData;
	      else if (FUNC3 (name, ".rodata") == 0
		       || FUNC3 (name, ".rdata") == 0)
		h->esym.asym.sc = scRData;
	      else if (FUNC3 (name, ".bss") == 0)
		h->esym.asym.sc = scBss;
	      else if (FUNC3 (name, ".sbss") == 0)
		h->esym.asym.sc = scSBss;
	      else if (FUNC3 (name, ".init") == 0)
		h->esym.asym.sc = scInit;
	      else if (FUNC3 (name, ".fini") == 0)
		h->esym.asym.sc = scFini;
	      else
		h->esym.asym.sc = scAbs;
	    }
	}

      h->esym.asym.reserved = 0;
      h->esym.asym.index = indexNil;
    }

  if (h->root.root.type == bfd_link_hash_common)
    h->esym.asym.value = h->root.root.u.c.size;
  else if (h->root.root.type == bfd_link_hash_defined
	   || h->root.root.type == bfd_link_hash_defweak)
    {
      if (h->esym.asym.sc == scCommon)
	h->esym.asym.sc = scBss;
      else if (h->esym.asym.sc == scSCommon)
	h->esym.asym.sc = scSBss;

      sec = h->root.root.u.def.section;
      output_section = sec->output_section;
      if (output_section != NULL)
	h->esym.asym.value = (h->root.root.u.def.value
			      + sec->output_offset
			      + output_section->vma);
      else
	h->esym.asym.value = 0;
    }

  if (! FUNC0 (einfo->abfd, einfo->debug, einfo->swap,
				      h->root.root.root.string,
				      &h->esym))
    {
      einfo->failed = TRUE;
      return FALSE;
    }

  return TRUE;
}