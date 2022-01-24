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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (const tree ctor)
{
  if (FUNC0 (ctor))
    FUNC4 ("C2");
  else
    {
      FUNC3 (FUNC1 (ctor)
		  /* Even though we don't ever emit a definition of
		     the old-style destructor, we still have to
		     consider entities (like static variables) nested
		     inside it.  */
		  || FUNC2 (ctor));
      FUNC4 ("C1");
    }
}