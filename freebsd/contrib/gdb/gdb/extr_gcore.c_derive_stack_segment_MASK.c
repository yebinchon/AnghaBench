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
struct frame_info {int dummy; } ;
typedef  scalar_t__ bfd_vma ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 struct frame_info* FUNC2 () ; 
 scalar_t__ FUNC3 (struct frame_info*) ; 
 struct frame_info* FUNC4 (struct frame_info*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  target_has_registers ; 
 int /*<<< orphan*/  target_has_stack ; 

__attribute__((used)) static int
FUNC6 (bfd_vma *bottom, bfd_vma *top)
{
  struct frame_info *fi, *tmp_fi;

  FUNC1 (bottom);
  FUNC1 (top);

  /* Can't succeed without stack and registers.  */
  if (!target_has_stack || !target_has_registers)
    return 0;

  /* Can't succeed without current frame.  */
  fi = FUNC2 ();
  if (fi == NULL)
    return 0;

  /* Save frame pointer of TOS frame.  */
  *top = FUNC3 (fi);
  /* If current stack pointer is more "inner", use that instead.  */
  if (FUNC0 (FUNC5 (), *top))
    *top = FUNC5 ();

  /* Find prev-most frame.  */
  while ((tmp_fi = FUNC4 (fi)) != NULL)
    fi = tmp_fi;

  /* Save frame pointer of prev-most frame.  */
  *bottom = FUNC3 (fi);

  /* Now canonicalize their order, so that BOTTOM is a lower address
     (as opposed to a lower stack frame).  */
  if (*bottom > *top)
    {
      bfd_vma tmp_vma;

      tmp_vma = *top;
      *top = *bottom;
      *bottom = tmp_vma;
    }

  return 1;
}