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
struct table_elt {int mode; scalar_t__ in_memory; struct table_elt* next_same_value; int /*<<< orphan*/  exp; struct table_elt* first_same_value; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ hash_arg_in_memory ; 
 struct table_elt* FUNC6 (int /*<<< orphan*/ ,struct table_elt*,unsigned int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct table_elt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct table_elt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC11 (struct table_elt *class1, struct table_elt *class2)
{
  struct table_elt *elt, *next, *new;

  /* Ensure we start with the head of the classes.  */
  class1 = class1->first_same_value;
  class2 = class2->first_same_value;

  /* If they were already equal, forget it.  */
  if (class1 == class2)
    return;

  for (elt = class2; elt; elt = next)
    {
      unsigned int hash;
      rtx exp = elt->exp;
      enum machine_mode mode = elt->mode;

      next = elt->next_same_value;

      /* Remove old entry, make a new one in CLASS1's class.
	 Don't do this for invalid entries as we cannot find their
	 hash code (it also isn't necessary).  */
      if (FUNC3 (exp) || FUNC5 (exp, exp, 1, false))
	{
	  bool need_rehash = false;

	  hash_arg_in_memory = 0;
	  hash = FUNC0 (exp, mode);

	  if (FUNC3 (exp))
	    {
	      need_rehash = FUNC2 (FUNC1 (exp));
	      FUNC4 (FUNC1 (exp));
	    }

	  if (FUNC3 (exp) && FUNC1 (exp) >= FIRST_PSEUDO_REGISTER)
	    FUNC10 (exp, hash);
	  else
	    FUNC9 (elt, hash);

	  if (FUNC7 (exp, class1, 0) || need_rehash)
	    {
	      FUNC8 (exp);
	      hash = FUNC0 (exp, mode);
	    }
	  new = FUNC6 (exp, class1, hash, mode);
	  new->in_memory = hash_arg_in_memory;
	}
    }
}