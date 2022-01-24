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
typedef  scalar_t__ tree ;
struct init_node {scalar_t__ purpose; scalar_t__ value; struct init_node* right; struct init_node* left; } ;
struct TYPE_2__ {scalar_t__ index; scalar_t__ value; } ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNION_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  constructor_elements ; 
 int /*<<< orphan*/  constructor_elt ; 
 scalar_t__ constructor_incremental ; 
 struct init_node* constructor_pending_elts ; 
 int /*<<< orphan*/  constructor_type ; 
 scalar_t__ constructor_unfilled_fields ; 
 scalar_t__ constructor_unfilled_index ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC6 (tree field)
{
  struct init_node *p;

  if (FUNC0 (constructor_type) == ARRAY_TYPE)
    {
      if (constructor_incremental
	  && FUNC5 (field, constructor_unfilled_index))
	FUNC4 ();

      p = constructor_pending_elts;
      while (p)
	{
	  if (FUNC5 (field, p->purpose))
	    p = p->left;
	  else if (FUNC5 (p->purpose, field))
	    p = p->right;
	  else
	    return p->value;
	}
    }
  else if (FUNC0 (constructor_type) == RECORD_TYPE)
    {
      tree bitpos = FUNC3 (field);

      if (constructor_incremental
	  && (!constructor_unfilled_fields
	      || FUNC5 (bitpos,
				  FUNC3 (constructor_unfilled_fields))))
	FUNC4 ();

      p = constructor_pending_elts;
      while (p)
	{
	  if (field == p->purpose)
	    return p->value;
	  else if (FUNC5 (bitpos, FUNC3 (p->purpose)))
	    p = p->left;
	  else
	    p = p->right;
	}
    }
  else if (FUNC0 (constructor_type) == UNION_TYPE)
    {
      if (!FUNC1 (constructor_elt, constructor_elements)
	  && (FUNC2 (constructor_elt, constructor_elements)->index
	      == field))
	return FUNC2 (constructor_elt, constructor_elements)->value;
    }
  return 0;
}