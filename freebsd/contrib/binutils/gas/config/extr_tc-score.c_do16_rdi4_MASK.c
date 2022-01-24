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
 int /*<<< orphan*/  _IMM4 ; 
 int FUNC0 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC2 (char**,int) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *str)
{
  FUNC4 (str);

  if (FUNC2 (&str, 8) == (int) FAIL
      || FUNC3 (&str) == (int) FAIL
      || FUNC0 (&str, 3, _IMM4) == (int) FAIL
      || FUNC1 (str) == (int) FAIL)
    {
      return;
    }
  else
    {
      if (((inst.instruction >> 3) & 0x10) == 0)        /* for judge is addei or subei : bit 5 =0 : addei */
        {
          if (((inst.instruction >> 3) & 0xf) != 0xf)
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                | ((1 << ((inst.instruction >> 3) & 0xf)) << 1);
              inst.relax_size = 4;
            }
          else
            {
              inst.relax_inst = 0x8000;
            }
        }
      else
        {
          if (((inst.instruction >> 3) & 0xf) != 0xf)
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                | (((-(1 << ((inst.instruction >> 3) & 0xf))) & 0xffff) << 1);
              inst.relax_size = 4;
            }
          else
            {
              inst.relax_inst = 0x8000;
            }
        }
    }
}