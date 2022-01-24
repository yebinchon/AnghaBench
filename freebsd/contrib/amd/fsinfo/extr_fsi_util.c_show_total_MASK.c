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
typedef  int /*<<< orphan*/  n ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int show_range ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC4 (char*) ; 
 int total_mmm ; 
 int /*<<< orphan*/  total_shown ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
  if (total_mmm != -show_range + 1) {
    char n[8];
    int len;

    if (total_mmm < 0)
      FUNC2('*', stdout);
    FUNC5(n, sizeof(n), "%d", total_shown);
    len = FUNC4(n);
    if (FUNC0(len))
      FUNC2(' ', stdout);
    FUNC3(n, stdout);
    FUNC1(stdout);
    total_mmm = -show_range;
  }
}