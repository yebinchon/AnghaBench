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
 int /*<<< orphan*/  _IMM16 ; 
 int FUNC0 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *str)
{
  FUNC4 (str);

  if (FUNC2 (&str, 20, REG_TYPE_SCORE) == (int) FAIL
      || FUNC3 (&str) == (int) FAIL
      || FUNC0 (&str, 1, _IMM16) == (int) FAIL
      || FUNC1 (str) == (int) FAIL)
    return;
  /*
  if (((inst.instruction & 0xa0dfffe) != 0xa0c0000) || ((((inst.instruction >> 20) & 0x1f) & 0x10) == 0x10))
    inst.relax_inst = 0x8000;
  else
    inst.relax_size = 2;
  */
}