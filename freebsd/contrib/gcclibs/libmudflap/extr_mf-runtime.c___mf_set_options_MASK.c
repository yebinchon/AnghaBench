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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char const*) ; 

int
FUNC5 (const char *optstr)
{
  int rc;
  FUNC2 ();
  FUNC0 ();
  rc = FUNC4 (optstr);
  /* XXX: It's not really that easy.  A change to a bunch of parameters
     can require updating auxiliary state or risk crashing:
     free_queue_length, crumple_zone ... */
  FUNC1 ();
  FUNC3 ();
  return rc;
}