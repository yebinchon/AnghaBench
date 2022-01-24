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
struct tagged_tu_seen_cache {scalar_t__ t1; scalar_t__ t2; int val; struct tagged_tu_seen_cache* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  ENUMERAL_TYPE 130 
 int FIELD_DECL ; 
 scalar_t__ NULL_TREE ; 
#define  RECORD_TYPE 129 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int TYPE_DECL ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
#define  UNION_TYPE 128 
 struct tagged_tu_seen_cache* FUNC12 (scalar_t__,scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_isoc99 ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tagged_tu_seen_cache* tagged_tu_seen_base ; 

__attribute__((used)) static int
FUNC18 (tree t1, tree t2)
{
  tree s1, s2;
  bool needs_warning = false;

  /* We have to verify that the tags of the types are the same.  This
     is harder than it looks because this may be a typedef, so we have
     to go look at the original type.  It may even be a typedef of a
     typedef...
     In the case of compiler-created builtin structs the TYPE_DECL
     may be a dummy, with no DECL_ORIGINAL_TYPE.  Don't fault.  */
  while (FUNC9 (t1)
	 && FUNC4 (FUNC9 (t1)) == TYPE_DECL
	 && FUNC2 (FUNC9 (t1)))
    t1 = FUNC2 (FUNC9 (t1));

  while (FUNC9 (t2)
	 && FUNC4 (FUNC9 (t2)) == TYPE_DECL
	 && FUNC2 (FUNC9 (t2)))
    t2 = FUNC2 (FUNC9 (t2));

  /* C90 didn't have the requirement that the two tags be the same.  */
  if (flag_isoc99 && FUNC9 (t1) != FUNC9 (t2))
    return 0;

  /* C90 didn't say what happened if one or both of the types were
     incomplete; we choose to follow C99 rules here, which is that they
     are compatible.  */
  if (FUNC10 (t1) == NULL
      || FUNC10 (t2) == NULL)
    return 1;

  {
    const struct tagged_tu_seen_cache * tts_i;
    for (tts_i = tagged_tu_seen_base; tts_i != NULL; tts_i = tts_i->next)
      if (tts_i->t1 == t1 && tts_i->t2 == t2)
	return tts_i->val;
  }

  switch (FUNC4 (t1))
    {
    case ENUMERAL_TYPE:
      {
	struct tagged_tu_seen_cache *tu = FUNC12 (t1, t2);
	/* Speed up the case where the type values are in the same order.  */
	tree tv1 = FUNC11 (t1);
	tree tv2 = FUNC11 (t2);

	if (tv1 == tv2)
	  {
	    return 1;
	  }

	for (;tv1 && tv2; tv1 = FUNC3 (tv1), tv2 = FUNC3 (tv2))
	  {
	    if (FUNC5 (tv1) != FUNC5 (tv2))
	      break;
	    if (FUNC17 (FUNC7 (tv1), FUNC7 (tv2)) != 1)
	      {
		tu->val = 0;
		return 0;
	      }
	  }

	if (tv1 == NULL_TREE && tv2 == NULL_TREE)
	  {
	    return 1;
	  }
	if (tv1 == NULL_TREE || tv2 == NULL_TREE)
	  {
	    tu->val = 0;
	    return 0;
	  }

	if (FUNC15 (FUNC11 (t1)) != FUNC15 (FUNC11 (t2)))
	  {
	    tu->val = 0;
	    return 0;
	  }

	for (s1 = FUNC11 (t1); s1; s1 = FUNC3 (s1))
	  {
	    s2 = FUNC16 (FUNC5 (s1), FUNC11 (t2));
	    if (s2 == NULL
		|| FUNC17 (FUNC7 (s1), FUNC7 (s2)) != 1)
	      {
		tu->val = 0;
		return 0;
	      }
	  }
	return 1;
      }

    case UNION_TYPE:
      {
	struct tagged_tu_seen_cache *tu = FUNC12 (t1, t2);
	if (FUNC15 (FUNC8 (t1)) != FUNC15 (FUNC8 (t2)))
	  {
	    tu->val = 0;
	    return 0;
	  }

	/*  Speed up the common case where the fields are in the same order. */
	for (s1 = FUNC8 (t1), s2 = FUNC8 (t2); s1 && s2;
	     s1 = FUNC3 (s1), s2 = FUNC3 (s2))
	  {
	    int result;


	    if (FUNC1 (s1) == NULL
		|| FUNC1 (s1) != FUNC1 (s2))
	      break;
	    result = FUNC13 (FUNC6 (s1), FUNC6 (s2));
	    if (result == 0)
	      {
		tu->val = 0;
		return 0;
	      }
	    if (result == 2)
	      needs_warning = true;

	    if (FUNC4 (s1) == FIELD_DECL
		&& FUNC17 (FUNC0 (s1),
				     FUNC0 (s2)) != 1)
	      {
		tu->val = 0;
		return 0;
	      }
	  }
	if (!s1 && !s2)
	  {
	    tu->val = needs_warning ? 2 : 1;
	    return tu->val;
	  }

	for (s1 = FUNC8 (t1); s1; s1 = FUNC3 (s1))
	  {
	    bool ok = false;

	    if (FUNC1 (s1) != NULL)
	      for (s2 = FUNC8 (t2); s2; s2 = FUNC3 (s2))
		if (FUNC1 (s1) == FUNC1 (s2))
		  {
		    int result;
		    result = FUNC13 (FUNC6 (s1), FUNC6 (s2));
		    if (result == 0)
		      {
			tu->val = 0;
			return 0;
		      }
		    if (result == 2)
		      needs_warning = true;

		    if (FUNC4 (s1) == FIELD_DECL
			&& FUNC17 (FUNC0 (s1),
					     FUNC0 (s2)) != 1)
		      break;

		    ok = true;
		    break;
		  }
	    if (!ok)
	      {
		tu->val = 0;
		return 0;
	      }
	  }
	tu->val = needs_warning ? 2 : 10;
	return tu->val;
      }

    case RECORD_TYPE:
      {
	struct tagged_tu_seen_cache *tu = FUNC12 (t1, t2);

	for (s1 = FUNC8 (t1), s2 = FUNC8 (t2);
	     s1 && s2;
	     s1 = FUNC3 (s1), s2 = FUNC3 (s2))
	  {
	    int result;
	    if (FUNC4 (s1) != FUNC4 (s2)
		|| FUNC1 (s1) != FUNC1 (s2))
	      break;
	    result = FUNC13 (FUNC6 (s1), FUNC6 (s2));
	    if (result == 0)
	      break;
	    if (result == 2)
	      needs_warning = true;

	    if (FUNC4 (s1) == FIELD_DECL
		&& FUNC17 (FUNC0 (s1),
				     FUNC0 (s2)) != 1)
	      break;
	  }
	if (s1 && s2)
	  tu->val = 0;
	else
	  tu->val = needs_warning ? 2 : 1;
	return tu->val;
      }

    default:
      FUNC14 ();
    }
}