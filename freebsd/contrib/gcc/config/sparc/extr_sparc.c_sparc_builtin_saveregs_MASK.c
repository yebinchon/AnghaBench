#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int words; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ SPARC_INCOMING_INT_ARG_FIRST ; 
 int SPARC_INT_ARG_MAX ; 
 int UNITS_PER_WORD ; 
 TYPE_1__ current_function_args_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static rtx
FUNC6 (void)
{
  int first_reg = current_function_args_info.words;
  rtx address;
  int regno;

  for (regno = first_reg; regno < SPARC_INT_ARG_MAX; regno++)
    FUNC2 (FUNC3 (word_mode,
				 FUNC4 (Pmode,
					       frame_pointer_rtx,
					       FUNC1 (FUNC0 (0)
							+ (UNITS_PER_WORD
							   * regno)))),
		    FUNC5 (word_mode,
				 SPARC_INCOMING_INT_ARG_FIRST + regno));

  address = FUNC4 (Pmode,
			  frame_pointer_rtx,
			  FUNC1 (FUNC0 (0)
				   + UNITS_PER_WORD * first_reg));

  return address;
}