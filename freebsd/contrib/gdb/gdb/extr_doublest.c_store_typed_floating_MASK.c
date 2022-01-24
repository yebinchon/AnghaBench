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
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  DOUBLEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type const*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int /*<<< orphan*/ * FUNC1 (struct type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct type const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7 (void *addr, const struct type *type, DOUBLEST val)
{
  FUNC4 (FUNC0 (type) == TYPE_CODE_FLT);

  /* FIXME: kettenis/2001-10-28: It is debatable whether we should
     zero out any remaining bytes in the target buffer when TYPE is
     longer than the actual underlying floating-point format.  Perhaps
     we should store a fixed bitpattern in those remaining bytes,
     instead of zero, or perhaps we shouldn't touch those remaining
     bytes at all.

     NOTE: cagney/2001-10-28: With the way things currently work, it
     isn't a good idea to leave the end bits undefined.  This is
     because GDB writes out the entire sizeof(<floating>) bits of the
     floating-point type even though the value might only be stored
     in, and the target processor may only refer to, the first N <
     TYPE_LENGTH (type) bits.  If the end of the buffer wasn't
     initialized, GDB would write undefined data to the target.  An
     errant program, refering to that undefined data, would then
     become non-deterministic.

     See also the function convert_typed_floating below.  */
  FUNC5 (addr, 0, FUNC2 (type));

  if (FUNC1 (type) == NULL)
    /* Not all code remembers to set the FLOATFORMAT (language
       specific code? stabs?) so handle that here as a special case.  */
    FUNC6 (addr, FUNC2 (type), val);
  else
    FUNC3 (FUNC1 (type), &val, addr);
}