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
typedef  scalar_t__ alpha_extra_func_info_t ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ ALPHA_SP_REGNUM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC3 (CORE_ADDR pc, alpha_extra_func_info_t proc_desc)
{
  if (proc_desc)
    {
      /* If function is frameless, then we need to do it the hard way.  I
         strongly suspect that frameless always means prologueless... */
      if (FUNC1 (proc_desc) == ALPHA_SP_REGNUM
	  && FUNC0 (proc_desc) == 0)
	return 0;
    }

  return FUNC2 (pc);
}