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
struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int,struct mem_attrib*,struct target_ops*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int,struct mem_attrib*,struct target_ops*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC6 () ; 

__attribute__((used)) static int
FUNC7 (CORE_ADDR memaddr, char *myaddr, int len, int write,
		     struct mem_attrib *attrib, struct target_ops *target)
{
  struct cleanup *old_chain = FUNC6 ();
  int xfer;

  if (FUNC3 (inferior_ptid))
    inferior_ptid = FUNC5 (FUNC0 (inferior_ptid));

  xfer = FUNC4 (memaddr, myaddr, len, write, attrib, target);
  if (xfer == 0)
    xfer = FUNC1 (memaddr, myaddr, len, write, attrib, target);

  FUNC2 (old_chain);
  return xfer;
}