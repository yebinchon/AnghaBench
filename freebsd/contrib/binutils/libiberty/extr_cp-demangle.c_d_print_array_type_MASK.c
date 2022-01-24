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
struct demangle_component {int dummy; } ;
struct d_print_mod {TYPE_1__* mod; int /*<<< orphan*/  printed; struct d_print_mod* next; } ;
struct d_print_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_ARRAY_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct demangle_component const*) ; 
 int /*<<< orphan*/  FUNC3 (struct d_print_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct d_print_info*,struct d_print_mod*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct d_print_info *dpi,
                    const struct demangle_component *dc,
                    struct d_print_mod *mods)
{
  int need_space;

  need_space = 1;
  if (mods != NULL)
    {
      int need_paren;
      struct d_print_mod *p;

      need_paren = 0;
      for (p = mods; p != NULL; p = p->next)
	{
	  if (! p->printed)
	    {
	      if (p->mod->type == DEMANGLE_COMPONENT_ARRAY_TYPE)
		{
		  need_space = 0;
		  break;
		}
	      else
		{
		  need_paren = 1;
		  need_space = 1;
		  break;
		}
	    }
	}

      if (need_paren)
	FUNC1 (dpi, " (");

      FUNC4 (dpi, mods, 0);

      if (need_paren)
	FUNC0 (dpi, ')');
    }

  if (need_space)
    FUNC0 (dpi, ' ');

  FUNC0 (dpi, '[');

  if (FUNC2 (dc) != NULL)
    FUNC3 (dpi, FUNC2 (dc));

  FUNC0 (dpi, ']');
}