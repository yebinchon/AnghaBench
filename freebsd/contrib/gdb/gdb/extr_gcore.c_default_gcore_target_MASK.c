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
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * exec_bfd ; 

__attribute__((used)) static char *
FUNC1 (void)
{
  /* FIXME: This may only work for ELF targets.  */
  if (exec_bfd == NULL)
    return NULL;
  else
    return FUNC0 (exec_bfd);
}