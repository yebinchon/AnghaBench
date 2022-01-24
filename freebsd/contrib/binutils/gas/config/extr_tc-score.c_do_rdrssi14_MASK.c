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
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  _SIMM14 ; 
 int /*<<< orphan*/  FUNC0 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *str)         /* -(2^13)~((2^13)-1) */
{
  FUNC3 (str);

  if (FUNC1 (&str, 20, REG_TYPE_SCORE) != (int) FAIL
      && FUNC2 (&str) != (int) FAIL
      && FUNC1 (&str, 15, REG_TYPE_SCORE) != (int) FAIL
      && FUNC2 (&str) != (int) FAIL)
    FUNC0 (&str, 1, _SIMM14);
}