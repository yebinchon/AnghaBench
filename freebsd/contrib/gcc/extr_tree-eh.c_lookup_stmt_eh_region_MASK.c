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
 int /*<<< orphan*/  cfun ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1 (tree t)
{
  /* We can get called from initialized data when -fnon-call-exceptions
     is on; prevent crash.  */
  if (!cfun)
    return -1;
  return FUNC0 (cfun, t);
}