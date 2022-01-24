#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ vbase; scalar_t__ binfo; int /*<<< orphan*/  rtti_binfo; scalar_t__ ctor_vtbl_p; } ;
typedef  TYPE_1__ vtbl_init_data ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16 (tree binfo, vtbl_init_data* vid)
{
  /* Make entries for the rest of the virtuals.  */
  if (FUNC11 (2))
    {
      tree orig_fn;

      /* The ABI requires that the methods be processed in declaration
	 order.  G++ 3.2 used the order in the vtable.  */
      for (orig_fn = FUNC10 (FUNC1 (binfo));
	   orig_fn;
	   orig_fn = FUNC8 (orig_fn))
	if (FUNC6 (orig_fn))
	  FUNC12 (orig_fn, binfo, vid);
    }
  else
    {
      tree derived_virtuals;
      tree base_virtuals;
      tree orig_virtuals;
      /* If BINFO is a primary base, the most derived class which has
	 BINFO as a primary base; otherwise, just BINFO.  */
      tree non_primary_binfo;

      /* We might be a primary base class.  Go up the inheritance hierarchy
	 until we find the most derived class of which we are a primary base:
	 it is the BINFO_VIRTUALS there that we need to consider.  */
      non_primary_binfo = binfo;
      while (FUNC0 (non_primary_binfo))
	{
	  tree b;

	  /* If we have reached a virtual base, then it must be vid->vbase,
	     because we ignore other virtual bases in
	     add_vcall_offset_vtbl_entries_r.  In turn, it must be a primary
	     base (possibly multi-level) of vid->binfo, or we wouldn't
	     have called build_vcall_and_vbase_vtbl_entries for it.  But it
	     might be a lost primary, so just skip down to vid->binfo.  */
	  if (FUNC3 (non_primary_binfo))
	    {
	      FUNC13 (non_primary_binfo == vid->vbase);
	      non_primary_binfo = vid->binfo;
	      break;
	    }

	  b = FUNC0 (non_primary_binfo);
	  if (FUNC14 (b) != non_primary_binfo)
	    break;
	  non_primary_binfo = b;
	}

      if (vid->ctor_vtbl_p)
	/* For a ctor vtable we need the equivalent binfo within the hierarchy
	   where rtti_binfo is the most derived type.  */
	non_primary_binfo
	  = FUNC15 (non_primary_binfo, vid->rtti_binfo);

      for (base_virtuals = FUNC2 (binfo),
	     derived_virtuals = FUNC2 (non_primary_binfo),
	     orig_virtuals = FUNC2 (FUNC9 (FUNC1 (binfo)));
	   base_virtuals;
	   base_virtuals = FUNC8 (base_virtuals),
	     derived_virtuals = FUNC8 (derived_virtuals),
	     orig_virtuals = FUNC8 (orig_virtuals))
	{
	  tree orig_fn;

	  /* Find the declaration that originally caused this function to
	     be present in BINFO_TYPE (binfo).  */
	  orig_fn = FUNC4 (orig_virtuals);

	  /* When processing BINFO, we only want to generate vcall slots for
	     function slots introduced in BINFO.  So don't try to generate
	     one if the function isn't even defined in BINFO.  */
	  if (!FUNC7 (FUNC1 (binfo), FUNC5 (orig_fn)))
	    continue;

	  FUNC12 (orig_fn, binfo, vid);
	}
    }
}