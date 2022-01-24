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
 unsigned int FUNC4 (void*,size_t,int) ; 

unsigned FUNC5 (void *ptr, size_t sz)
{
  unsigned rc;
  FUNC2 ();
  FUNC0 ();
  rc = FUNC4 (ptr, sz, 1);
  FUNC1 ();
  FUNC3 ();
  return rc;
}