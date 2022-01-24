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
typedef  char* tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  OFFSET_REF ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  ba_check ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*,char*,int) ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC13 (char*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*,int) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*,...) ; 
 char* error_mark_node ; 
 scalar_t__ FUNC18 (char*) ; 
 char* FUNC19 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptrdiff_type_node ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 

tree
FUNC21 (tree datum, tree component)
{
  tree ptrmem_type;
  tree objtype;
  tree type;
  tree binfo;
  tree ctype;

  if (FUNC18 (datum) || FUNC18 (component))
    return error_mark_node;

  ptrmem_type = FUNC2 (component);
  if (!FUNC7 (ptrmem_type))
    {
      FUNC17 ("%qE cannot be used as a member pointer, since it is of "
	     "type %qT",
	     component, ptrmem_type);
      return error_mark_node;
    }

  objtype = FUNC3 (FUNC2 (datum));
  if (! FUNC1 (objtype))
    {
      FUNC17 ("cannot apply member pointer %qE to %qE, which is of "
	     "non-class type %qT",
	     component, datum, objtype);
      return error_mark_node;
    }

  type = FUNC6 (ptrmem_type);
  ctype = FUNC14 (FUNC4 (ptrmem_type));

  if (!FUNC0 (ctype))
    {
      if (!FUNC20 (ctype, objtype))
	goto mismatch;
      binfo = NULL;
    }
  else
    {
      binfo = FUNC19 (objtype, ctype, ba_check, NULL);

      if (!binfo)
	{
	mismatch:
	  FUNC17 ("pointer to member type %qT incompatible with object "
		 "type %qT",
		 type, objtype);
	  return error_mark_node;
	}
      else if (binfo == error_mark_node)
	return error_mark_node;
    }

  if (FUNC5 (ptrmem_type))
    {
      /* Compute the type of the field, as described in [expr.ref].
	 There's no such thing as a mutable pointer-to-member, so
	 things are not as complex as they are for references to
	 non-static data members.  */
      type = FUNC15 (type,
				      (FUNC16 (type)
				       | FUNC16 (FUNC2 (datum))));

      datum = FUNC9 (datum);

      /* Convert object to the correct base.  */
      if (binfo)
	datum = FUNC10 (PLUS_EXPR, datum, binfo, 1);

      /* Build an expression for "object + offset" where offset is the
	 value stored in the pointer-to-data-member.  */
      datum = FUNC8 (PLUS_EXPR, FUNC13 (type),
		      datum, FUNC12 (ptrdiff_type_node, component));
      return FUNC11 (datum, 0);
    }
  else
    return FUNC8 (OFFSET_REF, type, datum, component);
}