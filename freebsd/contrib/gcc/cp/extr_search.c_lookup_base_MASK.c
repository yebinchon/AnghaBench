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
struct lookup_base_data_s {scalar_t__ binfo; int ambiguous; int via_virtual; int want_any; int /*<<< orphan*/  repeated_base; scalar_t__ base; scalar_t__ t; } ;
typedef  int base_kind ;
typedef  scalar_t__ base_access ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ ba_any ; 
 scalar_t__ ba_check_bit ; 
 scalar_t__ ba_ignore_scope ; 
 scalar_t__ ba_quiet ; 
#define  bk_ambig 129 
 int bk_inaccessible ; 
#define  bk_not_base 128 
 int bk_proper_base ; 
 int bk_same_type ; 
 int bk_via_virtual ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dfs_lookup_base ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct lookup_base_data_s*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

tree
FUNC11 (tree t, tree base, base_access access, base_kind *kind_ptr)
{
  tree binfo;
  tree t_binfo;
  base_kind bk;

  if (t == error_mark_node || base == error_mark_node)
    {
      if (kind_ptr)
	*kind_ptr = bk_not_base;
      return error_mark_node;
    }
  FUNC10 (FUNC5 (base));

  if (!FUNC5 (t))
    {
      t_binfo = t;
      t = FUNC0 (t);
    }
  else
    {
      t = FUNC7 (FUNC4 (t));
      t_binfo = FUNC3 (t);
    }

  base = FUNC7 (FUNC4 (base));

  if (t_binfo)
    {
      struct lookup_base_data_s data;

      data.t = t;
      data.base = base;
      data.binfo = NULL_TREE;
      data.ambiguous = data.via_virtual = false;
      data.repeated_base = FUNC1 (t);
      data.want_any = access == ba_any;

      FUNC8 (t_binfo, dfs_lookup_base, NULL, &data);
      binfo = data.binfo;

      if (!binfo)
	bk = data.ambiguous ? bk_ambig : bk_not_base;
      else if (binfo == t_binfo)
	bk = bk_same_type;
      else if (data.via_virtual)
	bk = bk_via_virtual;
      else
	bk = bk_proper_base;
    }
  else
    {
      binfo = NULL_TREE;
      bk = bk_not_base;
    }

  /* Check that the base is unambiguous and accessible.  */
  if (access != ba_any)
    switch (bk)
      {
      case bk_not_base:
	break;

      case bk_ambig:
	if (!(access & ba_quiet))
	  {
	    FUNC9 ("%qT is an ambiguous base of %qT", base, t);
	    binfo = error_mark_node;
	  }
	break;

      default:
	if ((access & ba_check_bit)
	    /* If BASE is incomplete, then BASE and TYPE are probably
	       the same, in which case BASE is accessible.  If they
	       are not the same, then TYPE is invalid.  In that case,
	       there's no need to issue another error here, and
	       there's no implicit typedef to use in the code that
	       follows, so we skip the check.  */
	    && FUNC2 (base)
	    && !FUNC6 (t, base, !(access & ba_ignore_scope)))
	  {
	    if (!(access & ba_quiet))
	      {
		FUNC9 ("%qT is an inaccessible base of %qT", base, t);
		binfo = error_mark_node;
	      }
	    else
	      binfo = NULL_TREE;
	    bk = bk_inaccessible;
	  }
	break;
      }

  if (kind_ptr)
    *kind_ptr = bk;

  return binfo;
}