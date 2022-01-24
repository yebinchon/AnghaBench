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
 unsigned int BITS_PER_UNIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int POINTER_SIZE ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_AUTO_PIC ; 
 scalar_t__ TARGET_NO_PIC ; 
 int /*<<< orphan*/  asm_out_file ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (rtx x, unsigned int size, int aligned_p)
{
  if (size == POINTER_SIZE / BITS_PER_UNIT
      && !(TARGET_NO_PIC || TARGET_AUTO_PIC)
      && FUNC0 (x) == SYMBOL_REF
      && FUNC1 (x))
    {
      static const char * const directive[2][2] = {
	  /* 64-bit pointer */  /* 32-bit pointer */
	{ "\tdata8.ua\t@fptr(", "\tdata4.ua\t@fptr("},	/* unaligned */
	{ "\tdata8\t@fptr(",    "\tdata4\t@fptr("}	/* aligned */
      };
      FUNC3 (directive[(aligned_p != 0)][POINTER_SIZE == 32], asm_out_file);
      FUNC4 (asm_out_file, x);
      FUNC3 (")\n", asm_out_file);
      return true;
    }
  return FUNC2 (x, size, aligned_p);
}