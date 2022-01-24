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

/* Variables and functions */
 scalar_t__ NDFA_OPTION ; 
 scalar_t__ NO_MINIMIZATION_OPTION ; 
 scalar_t__ PROGRESS_OPTION ; 
 scalar_t__ TIME_OPTION ; 
 scalar_t__ V_OPTION ; 
 scalar_t__ W_OPTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ndfa_flag ; 
 int no_minimization_flag ; 
 int progress_flag ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int time_flag ; 
 int v_flag ; 
 int w_flag ; 

__attribute__((used)) static void
FUNC3 (rtx def)
{
  if (FUNC2 (FUNC0 (def, 0), NO_MINIMIZATION_OPTION + 1) == 0)
    no_minimization_flag = 1;
  else if (FUNC2 (FUNC0 (def, 0), TIME_OPTION + 1) == 0)
    time_flag = 1;
  else if (FUNC2 (FUNC0 (def, 0), V_OPTION + 1) == 0)
    v_flag = 1;
  else if (FUNC2 (FUNC0 (def, 0), W_OPTION + 1) == 0)
    w_flag = 1;
  else if (FUNC2 (FUNC0 (def, 0), NDFA_OPTION + 1) == 0)
    ndfa_flag = 1;
  else if (FUNC2 (FUNC0 (def, 0), PROGRESS_OPTION + 1) == 0)
    progress_flag = 1;
  else
    FUNC1 ("invalid option `%s' in automata_option", FUNC0 (def, 0));
}