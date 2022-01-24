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
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_5__ {int reg_mask; int reg_offset; int fpreg_mask; int leaf; int frame_offset; int frame_reg; int pc_reg; int /*<<< orphan*/ * isym; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSF_FUNCTION ; 
 scalar_t__ DEBUG_STABS ; 
 scalar_t__ FUNC0 (char) ; 
 int SEC_CODE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ bss_section ; 
 TYPE_2__ cur_proc ; 
 TYPE_2__* cur_proc_ptr ; 
 scalar_t__ data_section ; 
 scalar_t__ debug_type ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 char* input_line_pointer ; 
 scalar_t__ now_seg ; 
 int /*<<< orphan*/  numprocs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdoutput ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (int aent)
{
  symbolS *symbolP;
  int maybe_text;

  symbolP = FUNC8 ();
  if (*input_line_pointer == ',')
    ++input_line_pointer;
  FUNC1 ();
  if (FUNC0 (*input_line_pointer) || *input_line_pointer == '-')
    FUNC7 ();

#ifdef BFD_ASSEMBLER
  if ((bfd_get_section_flags (stdoutput, now_seg) & SEC_CODE) != 0)
    maybe_text = 1;
  else
    maybe_text = 0;
#else
  if (now_seg != data_section && now_seg != bss_section)
    maybe_text = 1;
  else
    maybe_text = 0;
#endif
  if (!maybe_text)
    FUNC4 (FUNC3(".ent or .aent not in text section."));
  if (!aent && cur_proc_ptr)
    FUNC4 (FUNC3("missing .end"));
  if (!aent)
    {
      cur_proc_ptr = &cur_proc;
      cur_proc_ptr->reg_mask = 0xdeadbeaf;
      cur_proc_ptr->reg_offset = 0xdeadbeaf;
      cur_proc_ptr->fpreg_mask = 0xdeafbeaf;
      cur_proc_ptr->leaf = 0xdeafbeaf;
      cur_proc_ptr->frame_offset = 0xdeafbeaf;
      cur_proc_ptr->frame_reg = 0xdeafbeaf;
      cur_proc_ptr->pc_reg = 0xdeafbeaf;
      cur_proc_ptr->isym = symbolP;
      FUNC10 (symbolP)->flags |= BSF_FUNCTION;
      ++numprocs;
      if (debug_type == DEBUG_STABS)
        FUNC9 (FUNC2 (symbolP), FUNC2 (symbolP));
    }
  FUNC6 ();
}