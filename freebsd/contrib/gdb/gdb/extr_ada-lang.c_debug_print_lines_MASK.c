#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct linetable {int nitems; TYPE_1__* item; } ;
struct TYPE_2__ {int line; scalar_t__ pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1 (struct linetable *lt)
{
  int i;

  if (lt == NULL)
    return;

  FUNC0 (stderr, "\t");
  for (i = 0; i < lt->nitems; i += 1)
    FUNC0 (stderr, "(%d->%p) ", lt->item[i].line, (void *) lt->item[i].pc);
  FUNC0 (stderr, "\n");
}