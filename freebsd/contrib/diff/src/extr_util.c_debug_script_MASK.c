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
struct change {long line0; long line1; long deleted; long inserted; struct change* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long,long,long,long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC2 (struct change *sp)
{
  FUNC0 (stdout);

  for (; sp; sp = sp->link)
    {
      long int line0 = sp->line0;
      long int line1 = sp->line1;
      long int deleted = sp->deleted;
      long int inserted = sp->inserted;
      FUNC1 (stderr, "%3ld %3ld delete %ld insert %ld\n",
	       line0, line1, deleted, inserted);
    }

  FUNC0 (stderr);
}