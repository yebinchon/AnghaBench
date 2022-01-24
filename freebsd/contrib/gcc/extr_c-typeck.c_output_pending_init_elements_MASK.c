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
struct init_node {scalar_t__ purpose; struct init_node* parent; struct init_node* right; struct init_node* left; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct init_node* constructor_pending_elts ; 
 scalar_t__ constructor_type ; 
 scalar_t__ constructor_unfilled_fields ; 
 scalar_t__ constructor_unfilled_index ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (int all)
{
  struct init_node *elt = constructor_pending_elts;
  tree next;

 retry:

  /* Look through the whole pending tree.
     If we find an element that should be output now,
     output it.  Otherwise, set NEXT to the element
     that comes first among those still pending.  */

  next = 0;
  while (elt)
    {
      if (FUNC0 (constructor_type) == ARRAY_TYPE)
	{
	  if (FUNC4 (elt->purpose,
				  constructor_unfilled_index))
	    FUNC3 (elt->value, true,
				 FUNC1 (constructor_type),
				 constructor_unfilled_index, 0);
	  else if (FUNC5 (constructor_unfilled_index,
				    elt->purpose))
	    {
	      /* Advance to the next smaller node.  */
	      if (elt->left)
		elt = elt->left;
	      else
		{
		  /* We have reached the smallest node bigger than the
		     current unfilled index.  Fill the space first.  */
		  next = elt->purpose;
		  break;
		}
	    }
	  else
	    {
	      /* Advance to the next bigger node.  */
	      if (elt->right)
		elt = elt->right;
	      else
		{
		  /* We have reached the biggest node in a subtree.  Find
		     the parent of it, which is the next bigger node.  */
		  while (elt->parent && elt->parent->right == elt)
		    elt = elt->parent;
		  elt = elt->parent;
		  if (elt && FUNC5 (constructor_unfilled_index,
					      elt->purpose))
		    {
		      next = elt->purpose;
		      break;
		    }
		}
	    }
	}
      else if (FUNC0 (constructor_type) == RECORD_TYPE
	       || FUNC0 (constructor_type) == UNION_TYPE)
	{
	  tree ctor_unfilled_bitpos, elt_bitpos;

	  /* If the current record is complete we are done.  */
	  if (constructor_unfilled_fields == 0)
	    break;

	  ctor_unfilled_bitpos = FUNC2 (constructor_unfilled_fields);
	  elt_bitpos = FUNC2 (elt->purpose);
	  /* We can't compare fields here because there might be empty
	     fields in between.  */
	  if (FUNC4 (elt_bitpos, ctor_unfilled_bitpos))
	    {
	      constructor_unfilled_fields = elt->purpose;
	      FUNC3 (elt->value, true, FUNC1 (elt->purpose),
				   elt->purpose, 0);
	    }
	  else if (FUNC5 (ctor_unfilled_bitpos, elt_bitpos))
	    {
	      /* Advance to the next smaller node.  */
	      if (elt->left)
		elt = elt->left;
	      else
		{
		  /* We have reached the smallest node bigger than the
		     current unfilled field.  Fill the space first.  */
		  next = elt->purpose;
		  break;
		}
	    }
	  else
	    {
	      /* Advance to the next bigger node.  */
	      if (elt->right)
		elt = elt->right;
	      else
		{
		  /* We have reached the biggest node in a subtree.  Find
		     the parent of it, which is the next bigger node.  */
		  while (elt->parent && elt->parent->right == elt)
		    elt = elt->parent;
		  elt = elt->parent;
		  if (elt
		      && (FUNC5 (ctor_unfilled_bitpos,
					   FUNC2 (elt->purpose))))
		    {
		      next = elt->purpose;
		      break;
		    }
		}
	    }
	}
    }

  /* Ordinarily return, but not if we want to output all
     and there are elements left.  */
  if (!(all && next != 0))
    return;

  /* If it's not incremental, just skip over the gap, so that after
     jumping to retry we will output the next successive element.  */
  if (FUNC0 (constructor_type) == RECORD_TYPE
      || FUNC0 (constructor_type) == UNION_TYPE)
    constructor_unfilled_fields = next;
  else if (FUNC0 (constructor_type) == ARRAY_TYPE)
    constructor_unfilled_index = next;

  /* ELT now points to the node in the pending tree with the next
     initializer to output.  */
  goto retry;
}