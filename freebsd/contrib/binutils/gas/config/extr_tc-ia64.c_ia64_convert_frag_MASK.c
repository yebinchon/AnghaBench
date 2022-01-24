#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int valueT ;
typedef  int /*<<< orphan*/  unw_rec_list ;
struct TYPE_4__ {int fr_var; int fr_literal; int fr_fix; scalar_t__ fr_offset; int /*<<< orphan*/  fr_type; scalar_t__ fr_opcode; } ;
typedef  TYPE_1__ fragS ;
typedef  int bfd_vma ;
struct TYPE_5__ {int pointer_size; int flags; } ;

/* Variables and functions */
 int EF_IA_64_ABI64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ md ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  output_vbyte_mem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_fill ; 
 int vbyte_mem_ptr ; 

void
FUNC5 (fragS *frag)
{
  unw_rec_list *list;
  int len, size, pad;
  valueT flag_value;

  /* ??? This code is identical to ia64_estimate_size_before_relax.  */
  list = (unw_rec_list *) frag->fr_opcode;
  FUNC2 (list, 0);

  len = FUNC1 (list);
  /* pad to pointer-size boundary.  */
  pad = len % md.pointer_size;
  if (pad != 0)
    len += md.pointer_size - pad;
  /* Add 8 for the header.  */
  size = len + 8;
  /* Add a pointer for the personality offset.  */
  if (frag->fr_offset)
    size += md.pointer_size;

  /* fr_var carries the max_chars that we created the fragment with.
     We must, of course, have allocated enough memory earlier.  */
  FUNC0 (frag->fr_var >= size);

  /* Initialize the header area. fr_offset is initialized with
     unwind.personality_routine.  */
  if (frag->fr_offset)
    {
      if (md.flags & EF_IA_64_ABI64)
	flag_value = (bfd_vma) 3 << 32;
      else
	/* 32-bit unwind info block.  */
	flag_value = (bfd_vma) 0x1003 << 32;
    }
  else
    flag_value = 0;

 FUNC3 (frag->fr_literal,
		     (((bfd_vma) 1 << 48) /* Version.  */
		      | flag_value        /* U & E handler flags.  */
		      | (len / md.pointer_size)), /* Length.  */
		     8);

  /* Skip the header.  */
  vbyte_mem_ptr = frag->fr_literal + 8;
  FUNC4 (list, output_vbyte_mem);

  /* Fill the padding bytes with zeros.  */
  if (pad != 0)
    FUNC3 (frag->fr_literal + len + 8 - md.pointer_size + pad, 0,
			md.pointer_size - pad);

  frag->fr_fix += size;
  frag->fr_type = rs_fill;
  frag->fr_var = 0;
  frag->fr_offset = 0;
}