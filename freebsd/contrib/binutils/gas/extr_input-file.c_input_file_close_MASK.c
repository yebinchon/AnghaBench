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
 int /*<<< orphan*/ * f_in ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1 (void)
{
  /* Don't close a null file pointer.  */
  if (f_in != NULL)
    FUNC0 (f_in);

  f_in = 0;
}