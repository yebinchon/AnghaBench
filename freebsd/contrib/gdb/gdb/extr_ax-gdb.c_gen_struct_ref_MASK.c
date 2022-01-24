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
struct type {int dummy; } ;
struct axs_value {scalar_t__ kind; struct type* type; } ;
struct agent_expr {int dummy; } ;

/* Variables and functions */
 int TARGET_CHAR_BIT ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC1 (struct type*,int) ; 
 scalar_t__ FUNC2 (struct type*,int) ; 
 scalar_t__ FUNC3 (struct type*,int) ; 
 struct type* FUNC4 (struct type*,int) ; 
 scalar_t__ axs_lvalue_memory ; 
 struct type* FUNC5 (struct type*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct agent_expr*,struct axs_value*,struct type*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct agent_expr*,struct axs_value*) ; 
 int /*<<< orphan*/  FUNC10 (struct agent_expr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct agent_expr*,struct axs_value*) ; 

__attribute__((used)) static void
FUNC12 (struct agent_expr *ax, struct axs_value *value, char *field,
		char *operator_name, char *operand_name)
{
  struct type *type;
  int i;

  /* Follow pointers until we reach a non-pointer.  These aren't the C
     semantics, but they're what the normal GDB evaluator does, so we
     should at least be consistent.  */
  while (FUNC0 (value->type) == TYPE_CODE_PTR)
    {
      FUNC11 (ax, value);
      FUNC9 (ax, value);
    }
  type = FUNC5 (value->type);

  /* This must yield a structure or a union.  */
  if (FUNC0 (type) != TYPE_CODE_STRUCT
      && FUNC0 (type) != TYPE_CODE_UNION)
    FUNC6 ("The left operand of `%s' is not a %s.",
	   operator_name, operand_name);

  /* And it must be in memory; we don't deal with structure rvalues,
     or structures living in registers.  */
  if (value->kind != axs_lvalue_memory)
    FUNC6 ("Structure does not live in memory.");

  i = FUNC7 (type, field);

  /* Is this a bitfield?  */
  if (FUNC3 (type, i))
    FUNC8 (ax, value, FUNC4 (type, i),
		      FUNC1 (type, i),
		      (FUNC1 (type, i)
		       + FUNC2 (type, i)));
  else
    {
      FUNC10 (ax, FUNC1 (type, i) / TARGET_CHAR_BIT);
      value->kind = axs_lvalue_memory;
      value->type = FUNC4 (type, i);
    }
}