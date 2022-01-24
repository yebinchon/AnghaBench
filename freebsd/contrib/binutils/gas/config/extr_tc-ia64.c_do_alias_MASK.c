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
typedef  int /*<<< orphan*/  symbolS ;
struct alias {int /*<<< orphan*/  name; int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
typedef  scalar_t__ PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (const char *alias, PTR value)
{
  struct alias *h = (struct alias *) value;
  symbolS *sym = FUNC3 (h->name);

  if (sym == NULL)
    FUNC2 (h->file, h->line,
		   FUNC1("symbol `%s' aliased to `%s' is not used"),
		   h->name, alias);
    else
      FUNC0 (sym, (char *) alias);
}