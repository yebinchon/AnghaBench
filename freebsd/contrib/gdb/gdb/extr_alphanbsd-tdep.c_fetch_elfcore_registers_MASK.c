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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 unsigned int SIZEOF_STRUCT_FPREG ; 
 unsigned int SIZEOF_STRUCT_REG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (char *core_reg_sect, unsigned core_reg_size, int which,
                         CORE_ADDR ignore)
{
  switch (which)
    {
    case 0:  /* Integer registers.  */
      if (core_reg_size != SIZEOF_STRUCT_REG)
	FUNC2 ("Wrong size register set in core file.");
      else
	FUNC1 (core_reg_sect, -1);
      break;

    case 2:  /* Floating point registers.  */
      if (core_reg_size != SIZEOF_STRUCT_FPREG)
	FUNC2 ("Wrong size FP register set in core file.");
      else
	FUNC0 (core_reg_sect, -1);
      break;

    default:
      /* Don't know what kind of register request this is; just ignore it.  */
      break;
    }
}