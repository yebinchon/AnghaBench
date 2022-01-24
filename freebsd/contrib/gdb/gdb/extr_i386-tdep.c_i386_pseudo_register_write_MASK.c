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
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int MAX_REGISTER_SIZE ; 
 scalar_t__ FUNC0 (struct gdbarch*,int) ; 
 int FUNC1 (struct regcache*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct regcache*,int,void const*) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int) ; 

__attribute__((used)) static void
FUNC6 (struct gdbarch *gdbarch, struct regcache *regcache,
			    int regnum, const void *buf)
{
  if (FUNC0 (gdbarch, regnum))
    {
      char mmx_buf[MAX_REGISTER_SIZE];
      int fpnum = FUNC1 (regcache, regnum);

      /* Read ...  */
      FUNC3 (regcache, fpnum, mmx_buf);
      /* ... Modify ... (always little endian).  */
      FUNC2 (mmx_buf, buf, FUNC5 (gdbarch, regnum));
      /* ... Write.  */
      FUNC4 (regcache, fpnum, mmx_buf);
    }
  else
    FUNC4 (regcache, regnum, buf);
}