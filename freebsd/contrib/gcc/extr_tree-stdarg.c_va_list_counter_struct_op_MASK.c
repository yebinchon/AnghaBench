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
typedef  scalar_t__ tree ;
struct stdarg_info {int /*<<< orphan*/  va_list_vars; } ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct stdarg_info*,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ va_list_fpr_counter_field ; 
 scalar_t__ va_list_gpr_counter_field ; 

__attribute__((used)) static bool
FUNC7 (struct stdarg_info *si, tree ap, tree var,
			   bool write_p)
{
  tree base;

  if (FUNC2 (ap) != COMPONENT_REF
      || FUNC2 (FUNC3 (ap, 1)) != FIELD_DECL)
    return false;

  if (FUNC2 (var) != SSA_NAME
      || FUNC4 (si->va_list_vars, FUNC0 (FUNC1 (var))))
    return false;

  base = FUNC5 (ap);
  if (FUNC2 (base) != VAR_DECL
      || !FUNC4 (si->va_list_vars, FUNC0 (base)))
    return false;

  if (FUNC3 (ap, 1) == va_list_gpr_counter_field)
    FUNC6 (si, ap, var, true, write_p);
  else if (FUNC3 (ap, 1) == va_list_fpr_counter_field)
    FUNC6 (si, ap, var, false, write_p);

  return true;
}