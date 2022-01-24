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
 int /*<<< orphan*/  _VALUE_LO16 ; 
 int /*<<< orphan*/  FUNC0 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *str)
{
  FUNC3 (str);

  /* Do not handle end_of_line().  */
  if (FUNC1 (&str, 20, REG_TYPE_SCORE) != (int) FAIL
      && FUNC2 (&str) != (int) FAIL)
    FUNC0 (&str, 1, _VALUE_LO16);
}