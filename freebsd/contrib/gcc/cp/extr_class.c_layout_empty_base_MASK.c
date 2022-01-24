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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  splay_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_Wabi ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size_zero_node ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssizetype ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC13 (tree binfo, tree eoc, splay_tree offsets)
{
  tree alignment;
  tree basetype = FUNC1 (binfo);
  bool atend = false;

  /* This routine should only be used for empty classes.  */
  FUNC5 (FUNC7 (basetype));
  alignment = FUNC11 (FUNC2 (basetype));

  if (!FUNC6 (FUNC0 (binfo)))
    {
      if (FUNC3 (2))
	FUNC9
	  (binfo, FUNC10 (size_zero_node, FUNC0 (binfo)));
      else
	FUNC12 (OPT_Wabi,
		 "offset of empty base %qT may not be ABI-compliant and may"
		 "change in a future version of GCC",
		 FUNC1 (binfo));
    }

  /* This is an empty base class.  We first try to put it at offset
     zero.  */
  if (FUNC8 (binfo,
			 FUNC0 (binfo),
			 offsets,
			 /*vbases_p=*/0))
    {
      /* That didn't work.  Now, we move forward from the next
	 available spot in the class.  */
      atend = true;
      FUNC9 (binfo, FUNC4 (ssizetype, eoc));
      while (1)
	{
	  if (!FUNC8 (binfo,
				  FUNC0 (binfo),
				  offsets,
				  /*vbases_p=*/0))
	    /* We finally found a spot where there's no overlap.  */
	    break;

	  /* There's overlap here, too.  Bump along to the next spot.  */
	  FUNC9 (binfo, alignment);
	}
    }
  return atend;
}