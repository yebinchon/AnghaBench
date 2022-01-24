#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {scalar_t__ got_header_size; TYPE_1__* s; scalar_t__ want_got_plt; } ;
struct bfd_link_info {TYPE_2__* input_bfds; int /*<<< orphan*/  hash; } ;
struct alloc_got_off_arg {unsigned int got_elt_size; scalar_t__ gotoff; } ;
typedef  scalar_t__ bfd_vma ;
typedef  size_t bfd_size_type ;
typedef  scalar_t__ bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_12__ {struct TYPE_12__* link_next; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_13__ {size_t sh_size; size_t sh_info; } ;
struct TYPE_14__ {TYPE_3__ symtab_hdr; } ;
struct TYPE_11__ {int arch_size; size_t sizeof_sym; } ;
typedef  TYPE_3__ Elf_Internal_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  elf_gc_allocate_got_offsets ; 
 int /*<<< orphan*/  FUNC2 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct alloc_got_off_arg*) ; 
 scalar_t__* FUNC4 (TYPE_2__*) ; 
 TYPE_5__* FUNC5 (TYPE_2__*) ; 
 struct elf_backend_data* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC8 (bfd *abfd,
					struct bfd_link_info *info)
{
  bfd *i;
  const struct elf_backend_data *bed = FUNC6 (abfd);
  bfd_vma gotoff;
  unsigned int got_elt_size = bed->s->arch_size / 8;
  struct alloc_got_off_arg gofarg;

  if (! FUNC7 (info->hash))
    return FALSE;

  /* The GOT offset is relative to the .got section, but the GOT header is
     put into the .got.plt section, if the backend uses it.  */
  if (bed->want_got_plt)
    gotoff = 0;
  else
    gotoff = bed->got_header_size;

  /* Do the local .got entries first.  */
  for (i = info->input_bfds; i; i = i->link_next)
    {
      bfd_signed_vma *local_got;
      bfd_size_type j, locsymcount;
      Elf_Internal_Shdr *symtab_hdr;

      if (FUNC0 (i) != bfd_target_elf_flavour)
	continue;

      local_got = FUNC4 (i);
      if (!local_got)
	continue;

      symtab_hdr = &FUNC5 (i)->symtab_hdr;
      if (FUNC1 (i))
	locsymcount = symtab_hdr->sh_size / bed->s->sizeof_sym;
      else
	locsymcount = symtab_hdr->sh_info;

      for (j = 0; j < locsymcount; ++j)
	{
	  if (local_got[j] > 0)
	    {
	      local_got[j] = gotoff;
	      gotoff += got_elt_size;
	    }
	  else
	    local_got[j] = (bfd_vma) -1;
	}
    }

  /* Then the global .got entries.  .plt refcounts are handled by
     adjust_dynamic_symbol  */
  gofarg.gotoff = gotoff;
  gofarg.got_elt_size = got_elt_size;
  FUNC3 (FUNC2 (info),
			  elf_gc_allocate_got_offsets,
			  &gofarg);
  return TRUE;
}