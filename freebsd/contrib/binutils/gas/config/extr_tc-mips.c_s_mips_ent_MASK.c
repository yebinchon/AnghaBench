#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  procS ;
struct TYPE_6__ {int /*<<< orphan*/ * func_sym; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSF_FUNCTION ; 
 scalar_t__ DEBUG_STABS ; 
 scalar_t__ FUNC0 (char) ; 
 int SEC_CODE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ cur_proc ; 
 TYPE_2__* cur_proc_ptr ; 
 scalar_t__ debug_type ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char,int) ; 
 scalar_t__ mips_cprestore_valid ; 
 scalar_t__ mips_frame_reg_valid ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  numprocs ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdoutput ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12 (int aent)
{
  symbolS *symbolP;

  symbolP = FUNC8 ();
  if (*input_line_pointer == ',')
    ++input_line_pointer;
  FUNC1 ();
  if (FUNC0 (*input_line_pointer)
      || *input_line_pointer == '-')
    FUNC7 ();

  if ((FUNC5 (stdoutput, now_seg) & SEC_CODE) == 0)
    FUNC4 (FUNC3(".ent or .aent not in text section."));

  if (!aent && cur_proc_ptr)
    FUNC4 (FUNC3("missing .end"));

  if (!aent)
    {
      /* This function needs its own .frame and .cprestore directives.  */
      mips_frame_reg_valid = 0;
      mips_cprestore_valid = 0;

      cur_proc_ptr = &cur_proc;
      FUNC9 (cur_proc_ptr, '\0', sizeof (procS));

      cur_proc_ptr->func_sym = symbolP;

      FUNC11 (symbolP)->flags |= BSF_FUNCTION;

      ++numprocs;

      if (debug_type == DEBUG_STABS)
        FUNC10 (FUNC2 (symbolP),
				 FUNC2 (symbolP));
    }

  FUNC6 ();
}