#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {void** loc; int mode; int fix_size; struct TYPE_4__* next; void* value; scalar_t__ forwards; scalar_t__ backwards; int /*<<< orphan*/ * minipool; scalar_t__ address; void* insn; } ;
typedef  TYPE_1__ Mfix ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ ARM_DOUBLEWORD_ALIGN ; 
 scalar_t__ FUNC0 (void*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (int) ; 
 scalar_t__ SYMBOL_REF ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void*) ; 
 scalar_t__ dump_file ; 
 scalar_t__ flag_pic ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (void*) ; 
 scalar_t__ FUNC9 (void*) ; 
 TYPE_1__* minipool_fix_head ; 
 TYPE_1__* minipool_fix_tail ; 
 int /*<<< orphan*/  minipool_obstack ; 
 int minipool_pad ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC11 (rtx insn, HOST_WIDE_INT address, rtx *loc,
		   enum machine_mode mode, rtx value)
{
  Mfix * fix = (Mfix *) FUNC10 (&minipool_obstack, sizeof (* fix));

#ifdef AOF_ASSEMBLER
  /* PIC symbol references need to be converted into offsets into the
     based area.  */
  /* XXX This shouldn't be done here.  */
  if (flag_pic && GET_CODE (value) == SYMBOL_REF)
    value = aof_pic_entry (value);
#endif /* AOF_ASSEMBLER */

  fix->insn = insn;
  fix->address = address;
  fix->loc = loc;
  fix->mode = mode;
  fix->fix_size = FUNC3 (mode);
  fix->value = value;
  fix->forwards = FUNC9 (insn);
  fix->backwards = FUNC8 (insn);
  fix->minipool = NULL;

  /* If an insn doesn't have a range defined for it, then it isn't
     expecting to be reworked by this code.  Better to stop now than
     to generate duff assembly code.  */
  FUNC7 (fix->forwards || fix->backwards);

  /* If an entry requires 8-byte alignment then assume all constant pools
     require 4 bytes of padding.  Trying to do this later on a per-pool
     basis is awkward because existing pool entries have to be modified.  */
  if (ARM_DOUBLEWORD_ALIGN && fix->fix_size == 8)
    minipool_pad = 4;

  if (dump_file)
    {
      FUNC6 (dump_file,
	       ";; %smode fixup for i%d; addr %lu, range (%ld,%ld): ",
	       FUNC1 (mode),
	       FUNC2 (insn), (unsigned long) address,
	       -1 * (long)fix->backwards, (long)fix->forwards);
      FUNC5 (dump_file, fix->value);
      FUNC6 (dump_file, "\n");
    }

  /* Add it to the chain of fixes.  */
  fix->next = NULL;

  if (minipool_fix_head != NULL)
    minipool_fix_tail->next = fix;
  else
    minipool_fix_head = fix;

  minipool_fix_tail = fix;
}