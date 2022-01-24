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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ MINUS ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC4 (rtx disp)
{
  if (FUNC0 (disp) == MINUS)
    {
      if (FUNC0 (FUNC1 (disp, 0)) == LABEL_REF
          || FUNC0 (FUNC1 (disp, 0)) == SYMBOL_REF)
        if (FUNC0 (FUNC1 (disp, 1)) == SYMBOL_REF)
          {
            const char *sym_name = FUNC2 (FUNC1 (disp, 1), 0);
            if (! FUNC3 (sym_name, "<pic base>"))
              return true;
          }
    }

  return false;
}