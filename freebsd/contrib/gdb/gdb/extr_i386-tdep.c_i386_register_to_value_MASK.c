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
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*,int,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct frame_info*,int,struct type*,void*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7 (struct frame_info *frame, int regnum,
			struct type *type, void *to)
{
  int len = FUNC0 (type);
  char *buf = to;

  /* FIXME: kettenis/20030609: What should we do if REGNUM isn't
     available in FRAME (i.e. if it wasn't saved)?  */

  if (FUNC3 (regnum))
    {
      FUNC5 (frame, regnum, type, to);
      return;
    }

  /* Read a value spread accross multiple registers.  */

  FUNC1 (len > 4 && len % 4 == 0);

  while (len > 0)
    {
      FUNC1 (regnum != -1);
      FUNC1 (FUNC6 (current_gdbarch, regnum) == 4);

      FUNC2 (frame, regnum, buf);
      regnum = FUNC4 (regnum);
      len -= 4;
      buf += 4;
    }
}