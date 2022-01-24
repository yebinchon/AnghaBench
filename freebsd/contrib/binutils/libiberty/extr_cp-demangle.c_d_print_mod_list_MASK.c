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
struct demangle_component {scalar_t__ type; } ;
struct d_print_template {int dummy; } ;
struct d_print_mod {int printed; struct d_print_mod* next; struct demangle_component* mod; struct d_print_template* templates; } ;
struct d_print_info {int options; struct d_print_template* templates; struct d_print_mod* modifiers; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_ARRAY_TYPE ; 
 scalar_t__ DEMANGLE_COMPONENT_CONST_THIS ; 
 scalar_t__ DEMANGLE_COMPONENT_FUNCTION_TYPE ; 
 scalar_t__ DEMANGLE_COMPONENT_LOCAL_NAME ; 
 scalar_t__ DEMANGLE_COMPONENT_RESTRICT_THIS ; 
 scalar_t__ DEMANGLE_COMPONENT_VOLATILE_THIS ; 
 int DMGL_JAVA ; 
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,char*) ; 
 struct demangle_component* FUNC2 (struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct d_print_info*,struct demangle_component*,struct d_print_mod*) ; 
 int /*<<< orphan*/  FUNC4 (struct d_print_info*,struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct d_print_info*,struct demangle_component*,struct d_print_mod*) ; 
 int /*<<< orphan*/  FUNC6 (struct d_print_info*,struct demangle_component*) ; 
 scalar_t__ FUNC7 (struct d_print_info*) ; 
 struct demangle_component* FUNC8 (struct demangle_component*) ; 

__attribute__((used)) static void
FUNC9 (struct d_print_info *dpi,
                  struct d_print_mod *mods, int suffix)
{
  struct d_print_template *hold_dpt;

  if (mods == NULL || FUNC7 (dpi))
    return;

  if (mods->printed
      || (! suffix
	  && (mods->mod->type == DEMANGLE_COMPONENT_RESTRICT_THIS
	      || mods->mod->type == DEMANGLE_COMPONENT_VOLATILE_THIS
	      || mods->mod->type == DEMANGLE_COMPONENT_CONST_THIS)))
    {
      FUNC9 (dpi, mods->next, suffix);
      return;
    }

  mods->printed = 1;

  hold_dpt = dpi->templates;
  dpi->templates = mods->templates;

  if (mods->mod->type == DEMANGLE_COMPONENT_FUNCTION_TYPE)
    {
      FUNC5 (dpi, mods->mod, mods->next);
      dpi->templates = hold_dpt;
      return;
    }
  else if (mods->mod->type == DEMANGLE_COMPONENT_ARRAY_TYPE)
    {
      FUNC3 (dpi, mods->mod, mods->next);
      dpi->templates = hold_dpt;
      return;
    }
  else if (mods->mod->type == DEMANGLE_COMPONENT_LOCAL_NAME)
    {
      struct d_print_mod *hold_modifiers;
      struct demangle_component *dc;

      /* When this is on the modifier stack, we have pulled any
	 qualifiers off the right argument already.  Otherwise, we
	 print it as usual, but don't let the left argument see any
	 modifiers.  */

      hold_modifiers = dpi->modifiers;
      dpi->modifiers = NULL;
      FUNC4 (dpi, FUNC2 (mods->mod));
      dpi->modifiers = hold_modifiers;

      if ((dpi->options & DMGL_JAVA) == 0)
	FUNC1 (dpi, "::");
      else
	FUNC0 (dpi, '.');

      dc = FUNC8 (mods->mod);
      while (dc->type == DEMANGLE_COMPONENT_RESTRICT_THIS
	     || dc->type == DEMANGLE_COMPONENT_VOLATILE_THIS
	     || dc->type == DEMANGLE_COMPONENT_CONST_THIS)
	dc = FUNC2 (dc);

      FUNC4 (dpi, dc);

      dpi->templates = hold_dpt;
      return;
    }

  FUNC6 (dpi, mods->mod);

  dpi->templates = hold_dpt;

  FUNC9 (dpi, mods->next, suffix);
}