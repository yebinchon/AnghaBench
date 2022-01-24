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
 int /*<<< orphan*/  FUNC1 (void const*,struct type*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6 (struct frame_info *frame, int regnum,
			struct type *type, const void *from)
{
  char to[I386_MAX_REGISTER_SIZE];

  FUNC2 (FUNC3 (regnum));

  /* We only support floating-point values.  */
  if (FUNC0 (type) != TYPE_CODE_FLT)
    {
      FUNC5 ("Cannot convert non-floating-point type "
	       "to floating-point register value.");
      return;
    }

  /* Convert from TYPE.  This should be a no-op if TYPE is equivalent
     to the extended floating-point format used by the FPU.  */
  FUNC1 (from, type, to, builtin_type_i387_ext);
  FUNC4 (frame, regnum, to);
}