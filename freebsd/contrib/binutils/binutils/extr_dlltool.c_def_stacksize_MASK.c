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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3 (int reserve, int commit)
{
  char b[200];
  if (commit > 0)
    FUNC1 (b, "-stack 0x%x,0x%x ", reserve, commit);
  else
    FUNC1 (b, "-stack 0x%x ", reserve);
  FUNC0 (FUNC2 (b));
}