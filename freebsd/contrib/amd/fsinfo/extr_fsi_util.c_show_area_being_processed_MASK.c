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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int col ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int show_range ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC7 (char*) ; 
 int total_mmm ; 
 scalar_t__ total_shown ; 
 scalar_t__ verbose ; 

void
FUNC8(char *area, int n)
{
  static char *last_area = NULL;

  if (verbose < 0)
    return;
  if (last_area) {
    if (total_shown)
      FUNC6();
    FUNC5(")", stdout);
    col += 1;
  }

  if (!last_area || !FUNC0(area, last_area)) {
    if (last_area) {
      FUNC1(0);
      total_shown = 0;
      total_mmm = show_range + 1;
    }
    (void) FUNC2(FUNC7(area) + 2);
    FUNC4(stdout, "[%s", area);
    last_area = area;
  }

  FUNC5(" (", stdout);
  col += 2;
  show_range = n;
  total_mmm = n + 1;

  FUNC3(stdout);
}