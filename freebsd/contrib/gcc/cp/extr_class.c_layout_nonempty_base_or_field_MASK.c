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
struct record_layout_info_s {int /*<<< orphan*/  bitpos; int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  splay_tree ;
typedef  struct record_layout_info_s* record_layout_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNION_TYPE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct record_layout_info_s*) ; 
 int /*<<< orphan*/  FUNC14 (struct record_layout_info_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssizetype ; 

__attribute__((used)) static void
FUNC18 (record_layout_info rli,
			       tree decl,
			       tree binfo,
			       splay_tree offsets)
{
  tree offset = NULL_TREE;
  bool field_p;
  tree type;

  if (binfo)
    {
      /* For the purposes of determining layout conflicts, we want to
	 use the class type of BINFO; TREE_TYPE (DECL) will be the
	 CLASSTYPE_AS_BASE version, which does not contain entries for
	 zero-sized bases.  */
      type = FUNC6 (binfo);
      field_p = false;
    }
  else
    {
      type = FUNC6 (decl);
      field_p = true;
    }

  /* Try to place the field.  It may take more than one try if we have
     a hard time placing the field without putting two objects of the
     same type at the same address.  */
  while (1)
    {
      struct record_layout_info_s old_rli = *rli;

      /* Place this field.  */
      FUNC14 (rli, decl);
      offset = FUNC10 (decl);

      /* We have to check to see whether or not there is already
	 something of the same type at the offset we're about to use.
	 For example, consider:

	   struct S {};
	   struct T : public S { int i; };
	   struct U : public S, public T {};

	 Here, we put S at offset zero in U.  Then, we can't put T at
	 offset zero -- its S component would be at the same address
	 as the S we already allocated.  So, we have to skip ahead.
	 Since all data members, including those whose type is an
	 empty class, have nonzero size, any overlap can happen only
	 with a direct or indirect base-class -- it can't happen with
	 a data member.  */
      /* In a union, overlap is permitted; all members are placed at
	 offset zero.  */
      if (FUNC5 (rli->t) == UNION_TYPE)
	break;
      /* G++ 3.2 did not check for overlaps when placing a non-empty
	 virtual base.  */
      if (!FUNC8 (2) && binfo && FUNC2 (binfo))
	break;
      if (FUNC12 (field_p ? type : binfo, offset,
			     offsets, field_p))
	{
	  /* Strip off the size allocated to this field.  That puts us
	     at the first place we could have put the field with
	     proper alignment.  */
	  *rli = old_rli;

	  /* Bump up by the alignment required for the type.  */
	  rli->bitpos
	    = FUNC16 (PLUS_EXPR, rli->bitpos,
			  FUNC9 (binfo
				       ? FUNC3 (type)
				       : FUNC7 (type)));
	  FUNC13 (rli);
	}
      else
	/* There was no conflict.  We're done laying out this field.  */
	break;
    }

  /* Now that we know where it will be placed, update its
     BINFO_OFFSET.  */
  if (binfo && FUNC4 (FUNC1 (binfo)))
    /* Indirect virtual bases may have a nonzero BINFO_OFFSET at
       this point because their BINFO_OFFSET is copied from another
       hierarchy.  Therefore, we may not need to add the entire
       OFFSET.  */
    FUNC15 (binfo,
			     FUNC17 (FUNC11 (ssizetype, offset),
					  FUNC11 (ssizetype,
						   FUNC0 (binfo))));
}