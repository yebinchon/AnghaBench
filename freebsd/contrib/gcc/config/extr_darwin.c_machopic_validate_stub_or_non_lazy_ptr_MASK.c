#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {int used; int /*<<< orphan*/  symbol; } ;
typedef  TYPE_1__ machopic_indirection ;
struct TYPE_4__ {char* (* strip_name_encoding ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  machopic_indirections ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

void
FUNC8 (const char *name)
{
  machopic_indirection *p;

  p = ((machopic_indirection *)
       (FUNC2 (machopic_indirections, name,
			     FUNC3 (name))));
  if (p && ! p->used)
    {
      const char *real_name;
      tree id;

      p->used = true;

      /* Do what output_addr_const will do when we actually call it.  */
      if (FUNC0 (p->symbol))
	FUNC4 (FUNC0 (p->symbol));

      real_name = targetm.strip_name_encoding (FUNC1 (p->symbol, 0));

      id = FUNC6 (real_name);
      if (id)
	FUNC5 (id);
    }
}