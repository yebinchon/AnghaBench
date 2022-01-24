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

/* Variables and functions */
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2 (void)
{
  static int initialized = 0;

  if (! initialized)
    {
      initialized = 1;

      /* Set up the trigraph map.  This doesn't need to do anything if
	 we were compiled with a compiler that supports C99 designated
	 initializers.  */
      FUNC1 ();

#ifdef ENABLE_NLS
       (void) bindtextdomain (PACKAGE, LOCALEDIR);
#endif
    }
}