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
struct TYPE_2__ {int instruction; int relax_inst; int relax_size; void* error; } ;

/* Variables and functions */
 void* BAD_ARGS ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *str)
{
  int reg_rd;
  int H_bit_mask = 0;

  FUNC4 (str);
  if (((reg_rd = FUNC2 (&str, 8, REG_TYPE_SCORE)) == (int) FAIL)
      || (FUNC3 (&str) == (int) FAIL))
    return;

  if (reg_rd >= 16)
    H_bit_mask = 1;

  /* reg_required_here will change bit 12 of opcode, so we must restore bit 12.  */
  inst.instruction &= ~(1 << 12);

  inst.instruction |= H_bit_mask << 7;

  if (*str == '[')
    {
      int reg;

      str++;
      FUNC4 (str);
      if ((reg = FUNC2 (&str, 4, REG_TYPE_SCORE)) == (int) FAIL)
	return;
      else if (reg > 7)
        {
          if (!inst.error)
	    inst.error = FUNC0("base register nums are over 3 bit");

          return;
        }

      FUNC4 (str);
      if ((*str++ != ']') || (FUNC1 (str) == (int) FAIL))
        {
          if (!inst.error)
	    inst.error = FUNC0("missing ]");

          return;
        }

      /* pop! */
      if ((inst.instruction & 0xf) == 0xa)
        {
          if (H_bit_mask)
            {
              inst.relax_inst |= ((((inst.instruction >> 8) & 0xf) | 0x10) << 20)
                                  | (((inst.instruction >> 4) & 0x7) << 15) | (4 << 3);
            }
          else
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                                  | (((inst.instruction >> 4) & 0x7) << 15) | (4 << 3);
            }
        }
      /* push! */
      else
        {
          if (H_bit_mask)
            {
              inst.relax_inst |= ((((inst.instruction >> 8) & 0xf) | 0x10) << 20)
                                  | (((inst.instruction >> 4) & 0x7) << 15) | (((-4) & 0xfff) << 3);
            }
          else
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                                  | (((inst.instruction >> 4) & 0x7) << 15) | (((-4) & 0xfff) << 3);
            }
        }
      inst.relax_size = 4;
    }
  else
    {
      inst.error = BAD_ARGS;
    }
}