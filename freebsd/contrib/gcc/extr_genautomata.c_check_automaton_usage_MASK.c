#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* decl_t ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  automaton_is_used; } ;
struct TYPE_6__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_5__ {scalar_t__ mode; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 TYPE_2__* description ; 
 scalar_t__ dm_automaton ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  w_flag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  decl_t decl;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_automaton
	  && !FUNC0 (decl)->automaton_is_used)
	{
	  if (!w_flag)
	    FUNC1 ("automaton `%s' is not used", FUNC0 (decl)->name);
	  else
	    FUNC2 (0, "automaton `%s' is not used",
		     FUNC0 (decl)->name);
	}
    }
}