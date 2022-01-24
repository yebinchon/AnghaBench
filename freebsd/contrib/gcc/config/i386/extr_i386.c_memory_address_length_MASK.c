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
struct ix86_address {scalar_t__ base; scalar_t__ index; scalar_t__ disp; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ POST_INC ; 
 scalar_t__ POST_MODIFY ; 
 scalar_t__ PRE_DEC ; 
 scalar_t__ PRE_MODIFY ; 
 scalar_t__ SUBREG ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ arg_pointer_rtx ; 
 scalar_t__ frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ hard_frame_pointer_rtx ; 
 int FUNC3 (scalar_t__,struct ix86_address*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ stack_pointer_rtx ; 

int
FUNC5 (rtx addr)
{
  struct ix86_address parts;
  rtx base, index, disp;
  int len;
  int ok;

  if (FUNC0 (addr) == PRE_DEC
      || FUNC0 (addr) == POST_INC
      || FUNC0 (addr) == PRE_MODIFY
      || FUNC0 (addr) == POST_MODIFY)
    return 0;

  ok = FUNC3 (addr, &parts);
  FUNC2 (ok);

  if (parts.base && FUNC0 (parts.base) == SUBREG)
    parts.base = FUNC1 (parts.base);
  if (parts.index && FUNC0 (parts.index) == SUBREG)
    parts.index = FUNC1 (parts.index);

  base = parts.base;
  index = parts.index;
  disp = parts.disp;
  len = 0;

  /* Rule of thumb:
       - esp as the base always wants an index,
       - ebp as the base always wants a displacement.  */

  /* Register Indirect.  */
  if (base && !index && !disp)
    {
      /* esp (for its index) and ebp (for its displacement) need
	 the two-byte modrm form.  */
      if (addr == stack_pointer_rtx
	  || addr == arg_pointer_rtx
	  || addr == frame_pointer_rtx
	  || addr == hard_frame_pointer_rtx)
	len = 1;
    }

  /* Direct Addressing.  */
  else if (disp && !base && !index)
    len = 4;

  else
    {
      /* Find the length of the displacement constant.  */
      if (disp)
	{
	  if (base && FUNC4 (disp))
	    len = 1;
	  else
	    len = 4;
	}
      /* ebp always wants a displacement.  */
      else if (base == hard_frame_pointer_rtx)
        len = 1;

      /* An index requires the two-byte modrm form....  */
      if (index
	  /* ...like esp, which always wants an index.  */
	  || base == stack_pointer_rtx
	  || base == arg_pointer_rtx
	  || base == frame_pointer_rtx)
	len += 1;
    }

  return len;
}