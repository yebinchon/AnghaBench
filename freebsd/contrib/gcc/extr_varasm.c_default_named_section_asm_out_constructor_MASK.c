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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int DEFAULT_INIT_PRIORITY ; 
 int MAX_INIT_PRIORITY ; 
 int POINTER_SIZE ; 
 int /*<<< orphan*/  SECTION_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 (rtx symbol, int priority)
{
  const char *section = ".ctors";
  char buf[16];

  /* ??? This only works reliably with the GNU linker.  */
  if (priority != DEFAULT_INIT_PRIORITY)
    {
      FUNC3 (buf, ".ctors.%.5u",
	       /* Invert the numbering so the linker puts us in the proper
		  order; constructors are run from right to left, and the
		  linker sorts in increasing order.  */
	       MAX_INIT_PRIORITY - priority);
      section = buf;
    }

  FUNC4 (FUNC2 (section, SECTION_WRITE, NULL));
  FUNC0 (POINTER_SIZE);
  FUNC1 (symbol, POINTER_SIZE / BITS_PER_UNIT, POINTER_SIZE, 1);
}