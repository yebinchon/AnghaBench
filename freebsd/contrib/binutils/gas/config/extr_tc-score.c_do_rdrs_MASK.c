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
struct TYPE_2__ {int relax_inst; int instruction; int relax_size; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int FUNC0 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC1 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *str)
{
  FUNC3 (str);

  if (FUNC1 (&str, 20, REG_TYPE_SCORE) == (int) FAIL
      || FUNC2 (&str) == (int) FAIL
      || FUNC1 (&str, 15, REG_TYPE_SCORE) == (int) FAIL
      || FUNC0 (str) == (int) FAIL)
    return;

  if (inst.relax_inst != 0x8000)
    {
      if (((inst.instruction & 0x7f) == 0x56))  /* adjust mv -> mv! / mlfh! / mhfl! */
        {
          /* mlfh */
          if ((((inst.instruction >> 15) & 0x10) != 0x0) && (((inst.instruction >> 20) & 0x10) == 0))
            {
              inst.relax_inst = 0x00000001 | (((inst.instruction >> 15) & 0xf) << 4)
                | (((inst.instruction >> 20) & 0xf) << 8);
              inst.relax_size = 2;
            }
          /* mhfl */
          else if ((((inst.instruction >> 15) & 0x10) == 0x0) && ((inst.instruction >> 20) & 0x10) != 0)
            {
              inst.relax_inst = 0x00000002 | (((inst.instruction >> 15) & 0xf) << 4)
                | (((inst.instruction >> 20) & 0xf) << 8);
              inst.relax_size = 2;
            }
          else if ((((inst.instruction >> 15) & 0x10) == 0x0) && (((inst.instruction >> 20) & 0x10) == 0))
            {
              inst.relax_inst |= (((inst.instruction >> 15) & 0xf) << 4)
                | (((inst.instruction >> 20) & 0xf) << 8);
              inst.relax_size = 2;
            }
          else
            {
              inst.relax_inst = 0x8000;
            }
        }
      else if ((((inst.instruction >> 15) & 0x10) == 0x0) && (((inst.instruction >> 20) & 0x10) == 0))
        {
          inst.relax_inst |= (((inst.instruction >> 15) & 0xf) << 4)
            | (((inst.instruction >> 20) & 0xf) << 8);
          inst.relax_size = 2;
        }
      else
        {
          inst.relax_inst = 0x8000;
        }
    }
}