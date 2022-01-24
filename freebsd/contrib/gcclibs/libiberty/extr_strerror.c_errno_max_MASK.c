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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * error_names ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  num_error_names ; 
 int /*<<< orphan*/  sys_nerr ; 

int
FUNC2 (void)
{
  int maxsize;

  if (error_names == NULL)
    {
      FUNC1 ();
    }
  maxsize = FUNC0 (sys_nerr, num_error_names);
  return (maxsize - 1);
}