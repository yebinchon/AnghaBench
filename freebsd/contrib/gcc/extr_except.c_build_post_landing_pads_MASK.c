#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_11__ {int /*<<< orphan*/  filter; } ;
struct TYPE_9__ {struct eh_region* catch; } ;
struct TYPE_8__ {int /*<<< orphan*/ * filter_list; int /*<<< orphan*/ * type_list; struct eh_region* next_catch; } ;
struct TYPE_12__ {TYPE_4__ allowed; TYPE_2__ try; TYPE_1__ catch; } ;
struct eh_region {int region_number; int type; void* label; void* post_landing_pad; void* resume; TYPE_5__ u; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_14__ {TYPE_3__* eh; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* eh_return_filter_mode ) () ;} ;
struct TYPE_10__ {int last_region_number; int /*<<< orphan*/  filter; int /*<<< orphan*/  region_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  EQ ; 
#define  ERT_ALLOWED_EXCEPTIONS 133 
#define  ERT_CATCH 132 
#define  ERT_CLEANUP 131 
#define  ERT_MUST_NOT_THROW 130 
#define  ERT_THROW 129 
#define  ERT_TRY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct eh_region* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VOIDmode ; 
 TYPE_7__* cfun ; 
 int /*<<< orphan*/  eh_region ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 void* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 TYPE_6__ targetm ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19 (void)
{
  int i;

  for (i = cfun->eh->last_region_number; i > 0; --i)
    {
      struct eh_region *region;
      rtx seq;

      region = FUNC3 (eh_region, cfun->eh->region_array, i);
      /* Mind we don't process a region more than once.  */
      if (!region || region->region_number != i)
	continue;

      switch (region->type)
	{
	case ERT_TRY:
	  /* ??? Collect the set of all non-overlapping catch handlers
	       all the way up the chain until blocked by a cleanup.  */
	  /* ??? Outer try regions can share landing pads with inner
	     try regions if the types are completely non-overlapping,
	     and there are no intervening cleanups.  */

	  region->post_landing_pad = FUNC12 ();

	  FUNC15 ();

	  FUNC8 (region->post_landing_pad);

	  /* ??? It is mighty inconvenient to call back into the
	     switch statement generation code in expand_end_case.
	     Rapid prototyping sez a sequence of ifs.  */
	  {
	    struct eh_region *c;
	    for (c = region->u.try.catch; c ; c = c->u.catch.next_catch)
	      {
		if (c->u.catch.type_list == NULL)
		  FUNC6 (c->label);
		else
		  {
		    /* Need for one cmp/jump per type caught. Each type
		       list entry has a matching entry in the filter list
		       (see assign_filter_values).  */
		    tree tp_node = c->u.catch.type_list;
		    tree flt_node = c->u.catch.filter_list;

		    for (; tp_node; )
		      {
			FUNC5
			  (cfun->eh->filter,
			   FUNC0 (FUNC18 (FUNC2 (flt_node), 0)),
			   EQ, NULL_RTX,
			   targetm.eh_return_filter_mode (), 0, c->label);

			tp_node = FUNC1 (tp_node);
			flt_node = FUNC1 (flt_node);
		      }
		  }
	      }
	  }

	  /* We delay the generation of the _Unwind_Resume until we generate
	     landing pads.  We emit a marker here so as to get good control
	     flow data in the meantime.  */
	  region->resume
	    = FUNC7 (FUNC13 (VOIDmode, region->region_number));
	  FUNC4 ();

	  seq = FUNC14 ();
	  FUNC10 ();

	  FUNC9 (seq, region->u.try.catch->label);

	  break;

	case ERT_ALLOWED_EXCEPTIONS:
	  region->post_landing_pad = FUNC12 ();

	  FUNC15 ();

	  FUNC8 (region->post_landing_pad);

	  FUNC5 (cfun->eh->filter,
				   FUNC0 (region->u.allowed.filter),
				   EQ, NULL_RTX,
				   targetm.eh_return_filter_mode (), 0, region->label);

	  /* We delay the generation of the _Unwind_Resume until we generate
	     landing pads.  We emit a marker here so as to get good control
	     flow data in the meantime.  */
	  region->resume
	    = FUNC7 (FUNC13 (VOIDmode, region->region_number));
	  FUNC4 ();

	  seq = FUNC14 ();
	  FUNC10 ();

	  FUNC9 (seq, region->label);
	  break;

	case ERT_CLEANUP:
	case ERT_MUST_NOT_THROW:
	  region->post_landing_pad = region->label;
	  break;

	case ERT_CATCH:
	case ERT_THROW:
	  /* Nothing to do.  */
	  break;

	default:
	  FUNC11 ();
	}
    }
}