#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pred_data {scalar_t__* codes; } ;
struct TYPE_8__ {TYPE_1__* first; } ;
struct decision {int need_label; int number; struct decision* next; TYPE_2__ success; TYPE_5__* tests; int /*<<< orphan*/  afterward; } ;
typedef  enum decision_type { ____Placeholder_decision_type } decision_type ;
typedef  int /*<<< orphan*/  codemap ;
struct TYPE_9__ {struct pred_data* data; } ;
struct TYPE_10__ {size_t code; int veclen; int /*<<< orphan*/  intval; int /*<<< orphan*/  mode; TYPE_3__ pred; } ;
struct TYPE_11__ {int type; TYPE_4__ u; scalar_t__ next; } ;
struct TYPE_7__ {int number; int need_label; } ;
typedef  size_t RTX_CODE ;

/* Variables and functions */
 int DT_code ; 
#define  DT_elt_one_int 133 
#define  DT_elt_zero_int 132 
#define  DT_elt_zero_wide 131 
#define  DT_elt_zero_wide_safe 130 
#define  DT_mode 129 
 int DT_pred ; 
#define  DT_veclen 128 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int NUM_RTX_CODE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (struct decision*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct decision *
FUNC9 (struct decision *start, int depth)
{
  struct decision *p = start;
  enum decision_type type = p->tests->type;
  struct decision *needs_label = NULL;

  /* If we have two or more nodes in sequence that test the same one
     thing, we may be able to use a switch statement.  */

  if (!p->next
      || p->tests->next
      || p->next->tests->type != type
      || p->next->tests->next
      || FUNC4 (p->tests, p->next->tests))
    return p;

  /* DT_code is special in that we can do interesting things with
     known predicates at the same time.  */
  if (type == DT_code)
    {
      char codemap[NUM_RTX_CODE];
      struct decision *ret;
      RTX_CODE code;

      FUNC3 (codemap, 0, sizeof(codemap));

      FUNC7 ("  switch (GET_CODE (x%d))\n    {\n", depth);
      code = p->tests->u.code;
      do
	{
	  if (p != start && p->need_label && needs_label == NULL)
	    needs_label = p;

	  FUNC7 ("    case ");
	  FUNC5 (code);
	  FUNC7 (":\n      goto L%d;\n", p->success.first->number);
	  p->success.first->need_label = 1;

	  codemap[code] = 1;
	  p = p->next;
	}
      while (p
	     && ! p->tests->next
	     && p->tests->type == DT_code
	     && ! codemap[code = p->tests->u.code]);

      /* If P is testing a predicate that we know about and we haven't
	 seen any of the codes that are valid for the predicate, we can
	 write a series of "case" statement, one for each possible code.
	 Since we are already in a switch, these redundant tests are very
	 cheap and will reduce the number of predicates called.  */

      /* Note that while we write out cases for these predicates here,
	 we don't actually write the test here, as it gets kinda messy.
	 It is trivial to leave this to later by telling our caller that
	 we only processed the CODE tests.  */
      if (needs_label != NULL)
	ret = needs_label;
      else
	ret = p;

      while (p && p->tests->type == DT_pred && p->tests->u.pred.data)
	{
	  const struct pred_data *data = p->tests->u.pred.data;
	  RTX_CODE c;
	  for (c = 0; c < NUM_RTX_CODE; c++)
	    if (codemap[c] && data->codes[c])
	      goto pred_done;

	  for (c = 0; c < NUM_RTX_CODE; c++)
	    if (data->codes[c])
	      {
		FUNC1 ("    case ", stdout);
		FUNC5 (c);
		FUNC1 (":\n", stdout);
		codemap[c] = 1;
	      }

	  FUNC7 ("      goto L%d;\n", p->number);
	  p->need_label = 1;
	  p = p->next;
	}

    pred_done:
      /* Make the default case skip the predicates we managed to match.  */

      FUNC7 ("    default:\n");
      if (p != ret)
	{
	  if (p)
	    {
	      FUNC7 ("      goto L%d;\n", p->number);
	      p->need_label = 1;
	    }
	  else
	    FUNC8 (start, start->afterward, "      ");
	}
      else
	FUNC7 ("     break;\n");
      FUNC7 ("   }\n");

      return ret;
    }
  else if (type == DT_mode
	   || type == DT_veclen
	   || type == DT_elt_zero_int
	   || type == DT_elt_one_int
	   || type == DT_elt_zero_wide_safe)
    {
      const char *indent = "";

      /* We cast switch parameter to integer, so we must ensure that the value
	 fits.  */
      if (type == DT_elt_zero_wide_safe)
	{
	  indent = "  ";
	  FUNC7("  if ((int) XWINT (x%d, 0) == XWINT (x%d, 0))\n", depth, depth);
	}
      FUNC7 ("%s  switch (", indent);
      switch (type)
	{
	case DT_mode:
	  FUNC7 ("GET_MODE (x%d)", depth);
	  break;
	case DT_veclen:
	  FUNC7 ("XVECLEN (x%d, 0)", depth);
	  break;
	case DT_elt_zero_int:
	  FUNC7 ("XINT (x%d, 0)", depth);
	  break;
	case DT_elt_one_int:
	  FUNC7 ("XINT (x%d, 1)", depth);
	  break;
	case DT_elt_zero_wide_safe:
	  /* Convert result of XWINT to int for portability since some C
	     compilers won't do it and some will.  */
	  FUNC7 ("(int) XWINT (x%d, 0)", depth);
	  break;
	default:
	  FUNC2 ();
	}
      FUNC7 (")\n%s    {\n", indent);

      do
	{
	  /* Merge trees will not unify identical nodes if their
	     sub-nodes are at different levels.  Thus we must check
	     for duplicate cases.  */
	  struct decision *q;
	  for (q = start; q != p; q = q->next)
	    if (FUNC4 (p->tests, q->tests))
	      goto case_done;

	  if (p != start && p->need_label && needs_label == NULL)
	    needs_label = p;

	  FUNC7 ("%s    case ", indent);
	  switch (type)
	    {
	    case DT_mode:
	      FUNC7 ("%smode", FUNC0 (p->tests->u.mode));
	      break;
	    case DT_veclen:
	      FUNC7 ("%d", p->tests->u.veclen);
	      break;
	    case DT_elt_zero_int:
	    case DT_elt_one_int:
	    case DT_elt_zero_wide:
	    case DT_elt_zero_wide_safe:
	      FUNC6 (p->tests->u.intval);
	      break;
	    default:
	      FUNC2 ();
	    }
	  FUNC7 (":\n%s      goto L%d;\n", indent, p->success.first->number);
	  p->success.first->need_label = 1;

	  p = p->next;
	}
      while (p && p->tests->type == type && !p->tests->next);

    case_done:
      FUNC7 ("%s    default:\n%s      break;\n%s    }\n",
	      indent, indent, indent);

      return needs_label != NULL ? needs_label : p;
    }
  else
    {
      /* None of the other tests are amenable.  */
      return p;
    }
}