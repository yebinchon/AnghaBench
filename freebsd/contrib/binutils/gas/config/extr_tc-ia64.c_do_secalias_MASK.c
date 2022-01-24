#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct alias {int /*<<< orphan*/  name; int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__* segT ;
struct TYPE_3__ {char const* name; } ;
typedef  scalar_t__ PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdoutput ; 

__attribute__((used)) static void
FUNC3 (const char *alias, PTR value)
{
  struct alias *h = (struct alias *) value;
  segT sec = FUNC2 (stdoutput, h->name);

  if (sec == NULL)
    FUNC1 (h->file, h->line,
		   FUNC0("section `%s' aliased to `%s' is not used"),
		   h->name, alias);
  else
    sec->name = alias;
}