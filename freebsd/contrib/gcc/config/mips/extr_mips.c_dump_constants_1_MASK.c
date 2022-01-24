#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  MODE_FLOAT 131 
#define  MODE_INT 130 
#define  MODE_VECTOR_FLOAT 129 
#define  MODE_VECTOR_INT 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC10 (enum machine_mode mode, rtx value, rtx insn)
{
  switch (FUNC3 (mode))
    {
    case MODE_INT:
      {
	rtx size = FUNC2 (FUNC5 (mode));
	return FUNC6 (FUNC9 (value, size), insn);
      }

    case MODE_FLOAT:
      return FUNC6 (FUNC8 (value), insn);

    case MODE_VECTOR_FLOAT:
    case MODE_VECTOR_INT:
      {
	int i;
	for (i = 0; i < FUNC1 (value); i++)
	  insn = FUNC10 (FUNC4 (mode),
				   FUNC0 (value, i), insn);
	return insn;
      }

    default:
      FUNC7 ();
    }
}