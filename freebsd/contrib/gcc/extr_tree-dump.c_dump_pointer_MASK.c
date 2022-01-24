#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dump_info_p ;
struct TYPE_4__ {int column; int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,unsigned long) ; 

void
FUNC2 (dump_info_p di, const char *field, void *ptr)
{
  FUNC0 (di);
  FUNC1 (di->stream, "%-4s: %-8lx ", field, (unsigned long) ptr);
  di->column += 15;
}