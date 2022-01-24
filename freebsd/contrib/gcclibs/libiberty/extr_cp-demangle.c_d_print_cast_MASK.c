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
struct d_print_template {struct d_print_template* next; struct demangle_component const* template_decl; } ;
struct d_print_mod {int dummy; } ;
struct d_print_info {struct d_print_mod* modifiers; struct d_print_template* templates; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char) ; 
 char FUNC1 (struct d_print_info*) ; 
 struct demangle_component const* FUNC2 (struct demangle_component const*) ; 
 int /*<<< orphan*/  FUNC3 (struct d_print_info*,struct demangle_component const*) ; 
 struct demangle_component const* FUNC4 (struct demangle_component const*) ; 

__attribute__((used)) static void
FUNC5 (struct d_print_info *dpi,
              const struct demangle_component *dc)
{
  if (FUNC2 (dc)->type != DEMANGLE_COMPONENT_TEMPLATE)
    FUNC3 (dpi, FUNC2 (dc));
  else
    {
      struct d_print_mod *hold_dpm;
      struct d_print_template dpt;

      /* It appears that for a templated cast operator, we need to put
	 the template parameters in scope for the operator name, but
	 not for the parameters.  The effect is that we need to handle
	 the template printing here.  */

      hold_dpm = dpi->modifiers;
      dpi->modifiers = NULL;

      dpt.next = dpi->templates;
      dpi->templates = &dpt;
      dpt.template_decl = FUNC2 (dc);

      FUNC3 (dpi, FUNC2 (FUNC2 (dc)));

      dpi->templates = dpt.next;

      if (FUNC1 (dpi) == '<')
	FUNC0 (dpi, ' ');
      FUNC0 (dpi, '<');
      FUNC3 (dpi, FUNC4 (FUNC2 (dc)));
      /* Avoid generating two consecutive '>' characters, to avoid
	 the C++ syntactic ambiguity.  */
      if (FUNC1 (dpi) == '>')
	FUNC0 (dpi, ' ');
      FUNC0 (dpi, '>');

      dpi->modifiers = hold_dpm;
    }
}