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
struct case_node {struct case_node* right; int /*<<< orphan*/ * left; int /*<<< orphan*/  parent; scalar_t__ code_label; void* high; void* low; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct case_node* FUNC9 (int) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct case_node *
FUNC12 (struct case_node *head, tree type, tree low, tree high,
	       tree label)
{
  tree min_value, max_value;
  struct case_node *r;

  FUNC8 (FUNC0 (low) == INTEGER_CST);
  FUNC8 (!high || FUNC0 (high) == INTEGER_CST);

  min_value = FUNC5 (type);
  max_value = FUNC4 (type);

  /* If there's no HIGH value, then this is not a case range; it's
     just a simple case label.  But that's just a degenerate case
     range.
     If the bounds are equal, turn this into the one-value case.  */
  if (!high || FUNC11 (low, high))
    {
      /* If the simple case value is unreachable, ignore it.  */
      if ((FUNC0 (min_value) == INTEGER_CST
            && FUNC10 (low, min_value) < 0)
	  || (FUNC0 (max_value) == INTEGER_CST
	      && FUNC10 (low, max_value) > 0))
	return head;
      low = FUNC7 (type, low);
      high = low;
    }
  else
    {
      /* If the entire case range is unreachable, ignore it.  */
      if ((FUNC0 (min_value) == INTEGER_CST
            && FUNC10 (high, min_value) < 0)
	  || (FUNC0 (max_value) == INTEGER_CST
	      && FUNC10 (low, max_value) > 0))
	return head;

      /* If the lower bound is less than the index type's minimum
	 value, truncate the range bounds.  */
      if (FUNC0 (min_value) == INTEGER_CST
            && FUNC10 (low, min_value) < 0)
	low = min_value;
      low = FUNC7 (type, low);

      /* If the upper bound is greater than the index type's maximum
	 value, truncate the range bounds.  */
      if (FUNC0 (max_value) == INTEGER_CST
	  && FUNC10 (high, max_value) > 0)
	high = max_value;
      high = FUNC7 (type, high);
    }


  /* Add this label to the chain.  Make sure to drop overflow flags.  */
  r = FUNC9 (sizeof (struct case_node));
  r->low = FUNC6 (FUNC3 (low), FUNC2 (low),
			       FUNC1 (low));
  r->high = FUNC6 (FUNC3 (high), FUNC2 (high),
				FUNC1 (high));
  r->code_label = label;
  r->parent = *(r->left = NULL);
  r->right = head;
  return r;
}