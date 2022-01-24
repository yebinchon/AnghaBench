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
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,int,int*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 struct gdbarch* FUNC2 (struct frame_info*) ; 
#define  lval_memory 129 
#define  lval_register 128 
 int /*<<< orphan*/  FUNC3 (char*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,void const*) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC7 (struct frame_info *frame, int regnum, const void *buf)
{
  struct gdbarch *gdbarch = FUNC2 (frame);
  int realnum;
  int optim;
  enum lval_type lval;
  CORE_ADDR addr;
  FUNC1 (frame, regnum, &optim, &lval, &addr, &realnum, NULL);
  if (optim)
    FUNC0 ("Attempt to assign to a value that was optimized out.");
  switch (lval)
    {
    case lval_memory:
      {
	/* FIXME: write_memory doesn't yet take constant buffers.
           Arrrg!  */
	char tmp[MAX_REGISTER_SIZE];
	FUNC3 (tmp, buf, FUNC5 (gdbarch, regnum));
	FUNC6 (addr, tmp, FUNC5 (gdbarch, regnum));
	break;
      }
    case lval_register:
      FUNC4 (current_regcache, realnum, buf);
      break;
    default:
      FUNC0 ("Attempt to assign to an unmodifiable value.");
    }
}