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
typedef  scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ value; scalar_t__ type; } ;
typedef  TYPE_1__ cxx_binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_namespace ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 

void
FUNC5 (tree decl, tree scope, tree name)
{
  tree oldval, oldtype, newval, newtype;
  tree orig_decl = decl;
  cxx_binding *binding;

  decl = FUNC4 (decl, scope, name);
  if (decl == NULL_TREE)
    return;

  binding = FUNC1 (FUNC0 (current_namespace), name);

  oldval = binding->value;
  oldtype = binding->type;

  FUNC3 (scope, name, oldval, oldtype, &newval, &newtype);

  /* Emit debug info.  */
  if (!processing_template_decl)
    FUNC2 (orig_decl, current_namespace);

  /* Copy declarations found.  */
  if (newval)
    binding->value = newval;
  if (newtype)
    binding->type = newtype;
}