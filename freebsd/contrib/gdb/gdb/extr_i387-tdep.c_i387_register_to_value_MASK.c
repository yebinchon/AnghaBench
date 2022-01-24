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
struct frame_info {int dummy; } ;

/* Variables and functions */
 int I386_MAX_REGISTER_SIZE ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int /*<<< orphan*/  builtin_type_i387_ext ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,void*,struct type*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6 (struct frame_info *frame, int regnum,
			struct type *type, void *to)
{
  char from[I386_MAX_REGISTER_SIZE];

  FUNC2 (FUNC4 (regnum));

  /* We only support floating-point values.  */
  if (FUNC0 (type) != TYPE_CODE_FLT)
    {
      FUNC5 ("Cannot convert floating-point register value "
	       "to non-floating-point type.");
      return;
    }

  /* Convert to TYPE.  This should be a no-op if TYPE is equivalent to
     the extended floating-point format used by the FPU.  */
  FUNC3 (frame, regnum, from);
  FUNC1 (from, builtin_type_i387_ext, to, type);
}