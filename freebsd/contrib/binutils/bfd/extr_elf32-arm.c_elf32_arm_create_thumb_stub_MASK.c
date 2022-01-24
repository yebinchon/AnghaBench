#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int value; } ;
struct TYPE_10__ {TYPE_1__ def; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_3__ root; } ;
struct TYPE_12__ {scalar_t__ is_relocatable_executable; } ;
struct elf32_arm_link_hash_table {int arm_glue_size; scalar_t__ use_blx; scalar_t__ pic_veneer; TYPE_4__ root; int /*<<< orphan*/ * bfd_of_glue_owner; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_14__ {int output_offset; scalar_t__ contents; TYPE_5__* output_section; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_6__ asection ;
struct TYPE_13__ {int vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ a2t1_ldr_insn ; 
 scalar_t__ a2t1p_ldr_insn ; 
 scalar_t__ a2t1v5_ldr_insn ; 
 scalar_t__ a2t2_bx_r12_insn ; 
 scalar_t__ a2t2p_add_pc_insn ; 
 int a2t2v5_func_addr_insn ; 
 int a2t3_func_addr_insn ; 
 scalar_t__ a2t3p_bx_r12_insn ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 struct elf32_arm_link_hash_table* FUNC5 (struct bfd_link_info*) ; 
 struct elf_link_hash_entry* FUNC6 (struct bfd_link_info*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC7 (struct elf32_arm_link_hash_table*,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static struct elf_link_hash_entry *
FUNC9 (struct bfd_link_info * info,
			     const char *           name,
			     bfd *                  input_bfd,
			     bfd *                  output_bfd,
			     asection *             sym_sec,
			     bfd_vma                val,
			     asection		    *s,
			     char **error_message)
{
  bfd_vma my_offset;
  long int ret_offset;
  struct elf_link_hash_entry * myh;
  struct elf32_arm_link_hash_table * globals;

  myh = FUNC6 (info, name, error_message);
  if (myh == NULL)
    return NULL;

  globals = FUNC5 (info);

  FUNC0 (globals != NULL);
  FUNC0 (globals->bfd_of_glue_owner != NULL);

  my_offset = myh->root.u.def.value;

  if ((my_offset & 0x01) == 0x01)
    {
      if (sym_sec != NULL
	  && sym_sec->owner != NULL
	  && !FUNC1 (sym_sec->owner))
	{
	  FUNC3)
	    (FUNC2("%B(%s): warning: interworking not enabled.\n"
	       "  first occurrence: %B: arm call to thumb"),
	     sym_sec->owner, input_bfd, name);
	}

      --my_offset;
      myh->root.u.def.value = my_offset;

      if (info->shared || globals->root.is_relocatable_executable
	  || globals->pic_veneer)
	{
	  /* For relocatable objects we can't use absolute addresses,
	     so construct the address from a relative offset.  */
	  /* TODO: If the offset is small it's probably worth
	     constructing the address with adds.  */
	  FUNC7 (globals, output_bfd, (bfd_vma) a2t1p_ldr_insn,
			s->contents + my_offset);
	  FUNC7 (globals, output_bfd, (bfd_vma) a2t2p_add_pc_insn,
			s->contents + my_offset + 4);
	  FUNC7 (globals, output_bfd, (bfd_vma) a2t3p_bx_r12_insn,
			s->contents + my_offset + 8);
	  /* Adjust the offset by 4 for the position of the add,
	     and 8 for the pipeline offset.  */
	  ret_offset = (val - (s->output_offset
			       + s->output_section->vma
			       + my_offset + 12))
		       | 1;
	  FUNC4 (output_bfd, ret_offset,
		      s->contents + my_offset + 12);
	}
      else if (globals->use_blx)
	{
	  FUNC7 (globals, output_bfd, (bfd_vma) a2t1v5_ldr_insn,
			s->contents + my_offset);

	  /* It's a thumb address.  Add the low order bit.  */
	  FUNC4 (output_bfd, val | a2t2v5_func_addr_insn,
		      s->contents + my_offset + 4);
	}
      else
	{
	  FUNC7 (globals, output_bfd, (bfd_vma) a2t1_ldr_insn,
			s->contents + my_offset);

	  FUNC7 (globals, output_bfd, (bfd_vma) a2t2_bx_r12_insn,
			s->contents + my_offset + 4);

	  /* It's a thumb address.  Add the low order bit.  */
	  FUNC4 (output_bfd, val | a2t3_func_addr_insn,
		      s->contents + my_offset + 8);
	}
    }

  FUNC0 (my_offset <= globals->arm_glue_size);

  return myh;
}