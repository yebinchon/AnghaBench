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
typedef  int /*<<< orphan*/  tree ;
typedef  enum vect_var_kind { ____Placeholder_vect_var_kind } vect_var_kind ;

/* Variables and functions */
 char const* FUNC0 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  vect_pointer_var 130 
#define  vect_scalar_var 129 
#define  vect_simple_var 128 

__attribute__((used)) static tree
FUNC3 (tree type, enum vect_var_kind var_kind, const char *name)
{
  const char *prefix;
  tree new_vect_var;

  switch (var_kind)
  {
  case vect_simple_var:
    prefix = "vect_";
    break;
  case vect_scalar_var:
    prefix = "stmp_";
    break;
  case vect_pointer_var:
    prefix = "vect_p";
    break;
  default:
    FUNC2 ();
  }

  if (name)
    new_vect_var = FUNC1 (type, FUNC0 (prefix, name, NULL));
  else
    new_vect_var = FUNC1 (type, prefix);

  return new_vect_var;
}