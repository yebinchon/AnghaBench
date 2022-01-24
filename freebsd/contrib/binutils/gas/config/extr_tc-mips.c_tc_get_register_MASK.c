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
 int RTYPE_GP ; 
 int RTYPE_NUM ; 
 int RWARN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int SP ; 
 int /*<<< orphan*/  input_line_pointer ; 
 scalar_t__ mips_cprestore_valid ; 
 unsigned int mips_frame_reg ; 
 int mips_frame_reg_valid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned int*) ; 

int
FUNC2 (int frame)
{
  unsigned int reg;

  FUNC0 ();
  if (! FUNC1 (&input_line_pointer, RWARN | RTYPE_NUM | RTYPE_GP, &reg))
    reg = 0;
  if (frame)
    {
      mips_frame_reg = reg != 0 ? reg : SP;
      mips_frame_reg_valid = 1;
      mips_cprestore_valid = 0;
    }
  return reg;
}