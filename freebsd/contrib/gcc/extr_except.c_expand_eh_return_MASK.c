#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int /*<<< orphan*/  ehr_handler; int /*<<< orphan*/  ehr_stackadj; int /*<<< orphan*/  ehr_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  EH_RETURN_HANDLER_RTX ; 
 int /*<<< orphan*/  EH_RETURN_STACKADJ_RTX ; 
 scalar_t__ HAVE_eh_return ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  const0_rtx ; 
 int current_function_calls_eh_return ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8 (void)
{
  rtx around_label;

  if (! cfun->eh->ehr_label)
    return;

  current_function_calls_eh_return = 1;

#ifdef EH_RETURN_STACKADJ_RTX
  emit_move_insn (EH_RETURN_STACKADJ_RTX, const0_rtx);
#endif

  around_label = FUNC7 ();
  FUNC2 (around_label);

  FUNC3 (cfun->eh->ehr_label);
  FUNC0 ();

#ifdef EH_RETURN_STACKADJ_RTX
  emit_move_insn (EH_RETURN_STACKADJ_RTX, cfun->eh->ehr_stackadj);
#endif

#ifdef HAVE_eh_return
  if (HAVE_eh_return)
    emit_insn (gen_eh_return (cfun->eh->ehr_handler));
  else
#endif
    {
#ifdef EH_RETURN_HANDLER_RTX
      emit_move_insn (EH_RETURN_HANDLER_RTX, cfun->eh->ehr_handler);
#else
      FUNC5 ("__builtin_eh_return not supported on this target");
#endif
    }

  FUNC3 (around_label);
}