#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  splay_tree_value ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  TYPE_2__* splay_tree ;
struct TYPE_12__ {int /*<<< orphan*/  root; } ;
struct TYPE_11__ {scalar_t__ value; scalar_t__ key; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 

tree
FUNC21 (splay_tree cases, tree cond, tree orig_type,
		  tree low_value, tree high_value)
{
  tree type;
  tree label;
  tree case_label;
  splay_tree_node node;

  /* Create the LABEL_DECL itself.  */
  label = FUNC10 ();

  /* If there was an error processing the switch condition, bail now
     before we get more confused.  */
  if (!cond || cond == error_mark_node)
    goto error_out;

  if ((low_value && FUNC3 (low_value)
       && FUNC2 (FUNC3 (low_value)))
      || (high_value && FUNC3 (high_value)
	  && FUNC2 (FUNC3 (high_value))))
    {
      FUNC11 ("pointers are not permitted as case values");
      goto error_out;
    }

  /* Case ranges are a GNU extension.  */
  if (high_value && pedantic)
    FUNC12 ("range expressions in switch statements are non-standard");

  type = FUNC3 (cond);
  if (low_value)
    {
      low_value = FUNC8 (low_value);
      low_value = FUNC9 (type, low_value);
      if (low_value == error_mark_node)
	goto error_out;
    }
  if (high_value)
    {
      high_value = FUNC8 (high_value);
      high_value = FUNC9 (type, high_value);
      if (high_value == error_mark_node)
	goto error_out;
    }

  if (low_value && high_value)
    {
      /* If the LOW_VALUE and HIGH_VALUE are the same, then this isn't
	 really a case range, even though it was written that way.
	 Remove the HIGH_VALUE to simplify later processing.  */
      if (FUNC18 (low_value, high_value))
	high_value = NULL_TREE;
      else if (!FUNC19 (low_value, high_value))
	FUNC20 (0, "empty range specified");
    }

  /* See if the case is in range of the type of the original testing
     expression.  If both low_value and high_value are out of range,
     don't insert the case label and return NULL_TREE.  */
  if (low_value
      && !FUNC7 (type, orig_type,
			     &low_value, high_value ? &high_value : NULL))
    return NULL_TREE;

  /* Look up the LOW_VALUE in the table of case labels we already
     have.  */
  node = FUNC14 (cases, (splay_tree_key) low_value);
  /* If there was not an exact match, check for overlapping ranges.
     There's no need to do this if there's no LOW_VALUE or HIGH_VALUE;
     that's a `default' label and the only overlap is an exact match.  */
  if (!node && (low_value || high_value))
    {
      splay_tree_node low_bound;
      splay_tree_node high_bound;

      /* Even though there wasn't an exact match, there might be an
	 overlap between this case range and another case range.
	 Since we've (inductively) not allowed any overlapping case
	 ranges, we simply need to find the greatest low case label
	 that is smaller that LOW_VALUE, and the smallest low case
	 label that is greater than LOW_VALUE.  If there is an overlap
	 it will occur in one of these two ranges.  */
      low_bound = FUNC15 (cases,
					  (splay_tree_key) low_value);
      high_bound = FUNC16 (cases,
					 (splay_tree_key) low_value);

      /* Check to see if the LOW_BOUND overlaps.  It is smaller than
	 the LOW_VALUE, so there is no need to check unless the
	 LOW_BOUND is in fact itself a case range.  */
      if (low_bound
	  && FUNC0 ((tree) low_bound->value)
	  && FUNC17 (FUNC0 ((tree) low_bound->value),
				    low_value) >= 0)
	node = low_bound;
      /* Check to see if the HIGH_BOUND overlaps.  The low end of that
	 range is bigger than the low end of the current range, so we
	 are only interested if the current range is a real range, and
	 not an ordinary case label.  */
      else if (high_bound
	       && high_value
	       && (FUNC17 ((tree) high_bound->key,
					 high_value)
		   <= 0))
	node = high_bound;
    }
  /* If there was an overlap, issue an error.  */
  if (node)
    {
      tree duplicate = FUNC1 ((tree) node->value);

      if (high_value)
	{
	  FUNC11 ("duplicate (or overlapping) case value");
	  FUNC11 ("%Jthis is the first entry overlapping that value", duplicate);
	}
      else if (low_value)
	{
	  FUNC11 ("duplicate case value") ;
	  FUNC11 ("%Jpreviously used here", duplicate);
	}
      else
	{
	  FUNC11 ("multiple default labels in one switch");
	  FUNC11 ("%Jthis is the first default label", duplicate);
	}
      goto error_out;
    }

  /* Add a CASE_LABEL to the statement-tree.  */
  case_label = FUNC4 (FUNC5 (low_value, high_value, label));
  /* Register this case label in the splay tree.  */
  FUNC13 (cases,
		     (splay_tree_key) low_value,
		     (splay_tree_value) case_label);

  return case_label;

 error_out:
  /* Add a label so that the back-end doesn't think that the beginning of
     the switch is unreachable.  Note that we do not add a case label, as
     that just leads to duplicates and thence to failure later on.  */
  if (!cases->root)
    {
      tree t = FUNC10 ();
      FUNC4 (FUNC6 (LABEL_EXPR, t));
    }
  return error_mark_node;
}