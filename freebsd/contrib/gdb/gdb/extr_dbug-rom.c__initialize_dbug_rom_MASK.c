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
struct TYPE_4__ {char* to_shortname; char* to_longname; char* to_doc; int /*<<< orphan*/  to_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dbug_open ; 
 TYPE_1__ dbug_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3 (void)
{
  FUNC1 ();
  FUNC2 (&dbug_ops);

  dbug_ops.to_shortname = "dbug";
  dbug_ops.to_longname = "dBUG monitor";
  dbug_ops.to_doc = "Debug via the dBUG monitor.\n\
Specify the serial device it is connected to (e.g. /dev/ttya).";
  dbug_ops.to_open = dbug_open;

  FUNC0 (&dbug_ops);
}