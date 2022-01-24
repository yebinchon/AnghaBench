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
struct TYPE_2__ {int instruction; int relax_inst; int relax_size; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  _IMM5 ; 
 int FUNC0 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *str)           /* 0~((2^14)-1) */
{
  FUNC4 (str);

  if (FUNC2 (&str, 20, REG_TYPE_SCORE) == (int) FAIL
      || FUNC3 (&str) == (int) FAIL
      || FUNC2 (&str, 15, REG_TYPE_SCORE) == (int) FAIL
      || FUNC3 (&str) == (int) FAIL
      || FUNC0 (&str, 10, _IMM5) == (int) FAIL
      || FUNC1 (str) == (int) FAIL)
    return;

  if ((((inst.instruction >> 20) & 0x1f) == ((inst.instruction >> 15) & 0x1f))
      && (inst.relax_inst != 0x8000) && (((inst.instruction >> 15) & 0x10) == 0))
    {
      inst.relax_inst |= (((inst.instruction >> 10) & 0x1f) << 3) | (((inst.instruction >> 15) & 0xf) << 8);
      inst.relax_size = 2;
    }
  else
    inst.relax_inst = 0x8000;
}