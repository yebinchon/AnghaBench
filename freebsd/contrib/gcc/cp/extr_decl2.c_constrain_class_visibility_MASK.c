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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  OPT_Wattributes ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int VISIBILITY_ANON ; 
 int VISIBILITY_HIDDEN ; 
 int VISIBILITY_INTERNAL ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

void
FUNC14 (tree type)
{
  tree binfo;
  tree t;
  int i;

  int vis = FUNC12 (type);

  if (vis == VISIBILITY_ANON
      || FUNC2 (FUNC9 (type)))
    return;

  /* Don't warn about visibility if the class has explicit visibility.  */
  if (FUNC1 (type))
    vis = VISIBILITY_INTERNAL;

  for (t = FUNC8 (type); t; t = FUNC4 (t))
    if (FUNC5 (t) == FIELD_DECL && FUNC6 (t) != error_mark_node)
      {
	tree ftype = FUNC11 (FUNC6 (t));
	int subvis = FUNC12 (ftype);

	if (subvis == VISIBILITY_ANON)
	  {
	    if (!FUNC10 ())
	      FUNC13 (0, "\
%qT has a field %qD whose type uses the anonymous namespace",
		   type, t);
	  }
	else if (FUNC3 (ftype)
		 && vis < VISIBILITY_HIDDEN
		 && subvis >= VISIBILITY_HIDDEN)
	  FUNC13 (OPT_Wattributes, "\
%qT declared with greater visibility than the type of its field %qD",
		   type, t);
      }

  binfo = FUNC7 (type);
  for (i = 0; FUNC0 (binfo, i, t); ++i)
    {
      int subvis = FUNC12 (FUNC6 (t));

      if (subvis == VISIBILITY_ANON)
        {
	  if (!FUNC10())
	    FUNC13 (0, "\
%qT has a base %qT whose type uses the anonymous namespace",
		 type, FUNC6 (t));
	}
      else if (vis < VISIBILITY_HIDDEN
	       && subvis >= VISIBILITY_HIDDEN)
	FUNC13 (OPT_Wattributes, "\
%qT declared with greater visibility than its base %qT",
		 type, FUNC6 (t));
    }
}