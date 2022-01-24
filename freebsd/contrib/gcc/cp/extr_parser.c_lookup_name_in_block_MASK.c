#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {struct TYPE_4__* previous; scalar_t__ declared_in_block; } ;
typedef  TYPE_1__ cxx_binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ current_function_decl ; 

bool
FUNC5 (tree name, tree *decl)
{
  /* FIXME - Broken, should be found via objc runtime testcases.  */
  /* FIXME - Don't use DECL_CONTEXT on any helpers */
  cxx_binding *b = FUNC3 (name);
  if (b && b->declared_in_block
      && FUNC2 (FUNC0 (b)) == current_function_decl)
      return true;

  /* Check for variables only, as we may have parameters, such as
     'self' */
  /* Note that if a copied-in variable (BLOCK_DECL_COPIED) in the
     enclosing block is found, it must be returned as this is
     where the variable in current (nested block) will have to get
     its value. */
  while (b
	  && FUNC4 (FUNC0 (b)) == VAR_DECL
	  && (FUNC1 (FUNC0 (b))))
      b = b->previous;
  if (b)
      *decl = FUNC0 (b);
  return false;
}