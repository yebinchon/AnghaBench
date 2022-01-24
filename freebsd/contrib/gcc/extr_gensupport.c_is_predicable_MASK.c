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
struct queue_elem {int /*<<< orphan*/  lineno; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  rtvec ;

/* Variables and functions */
 int ATTR ; 
 int CONST_STRING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
#define  SET 130 
#define  SET_ATTR 129 
#define  SET_ATTR_ALTERNATIVE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char const* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int errors ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int predicable_default ; 
 char* predicable_false ; 
 char* predicable_true ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static int
FUNC11 (struct queue_elem *elem)
{
  rtvec vec = FUNC6 (elem->data, 4);
  const char *value;
  int i;

  if (! vec)
    return predicable_default;

  for (i = FUNC1 (vec) - 1; i >= 0; --i)
    {
      rtx sub = FUNC2 (vec, i);
      switch (FUNC0 (sub))
	{
	case SET_ATTR:
	  if (FUNC10 (FUNC5 (sub, 0), "predicable") == 0)
	    {
	      value = FUNC5 (sub, 1);
	      goto found;
	    }
	  break;

	case SET_ATTR_ALTERNATIVE:
	  if (FUNC10 (FUNC5 (sub, 0), "predicable") == 0)
	    {
	      FUNC8 (elem->lineno,
				 "multiple alternatives for `predicable'");
	      errors = 1;
	      return 0;
	    }
	  break;

	case SET:
	  if (FUNC0 (FUNC3 (sub)) != ATTR
	      || FUNC10 (FUNC5 (FUNC3 (sub), 0), "predicable") != 0)
	    break;
	  sub = FUNC4 (sub);
	  if (FUNC0 (sub) == CONST_STRING)
	    {
	      value = FUNC5 (sub, 0);
	      goto found;
	    }

	  /* ??? It would be possible to handle this if we really tried.
	     It's not easy though, and I'm not going to bother until it
	     really proves necessary.  */
	  FUNC8 (elem->lineno,
			     "non-constant value for `predicable'");
	  errors = 1;
	  return 0;

	default:
	  FUNC7 ();
	}
    }

  return predicable_default;

 found:
  /* Verify that predicability does not vary on the alternative.  */
  /* ??? It should be possible to handle this by simply eliminating
     the non-predicable alternatives from the insn.  FRV would like
     to do this.  Delay this until we've got the basics solid.  */
  if (FUNC9 (value, ',') != NULL)
    {
      FUNC8 (elem->lineno,
			 "multiple alternatives for `predicable'");
      errors = 1;
      return 0;
    }

  /* Find out which value we're looking at.  */
  if (FUNC10 (value, predicable_true) == 0)
    return 1;
  if (FUNC10 (value, predicable_false) == 0)
    return 0;

  FUNC8 (elem->lineno,
		     "unknown value `%s' for `predicable' attribute",
		     value);
  errors = 1;
  return 0;
}