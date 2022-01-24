#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_7__ {int filter; } ;
struct TYPE_6__ {int /*<<< orphan*/  filter_list; int /*<<< orphan*/ * type_list; struct eh_region* prev_catch; } ;
struct TYPE_5__ {struct eh_region* last_catch; } ;
struct TYPE_8__ {TYPE_3__ allowed; TYPE_2__ catch; TYPE_1__ try; } ;
struct eh_region {int type; struct eh_region* outer; TYPE_4__ u; } ;
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
#define  ERT_ALLOWED_EXCEPTIONS 133 
#define  ERT_CATCH 132 
#define  ERT_CLEANUP 131 
#define  ERT_MUST_NOT_THROW 130 
#define  ERT_THROW 129 
#define  ERT_TRY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5 (htab_t ar_hash, struct eh_region *region)
{
  struct eh_region *c;
  int next;

  /* If we've reached the top of the region chain, then we have
     no actions, and require no landing pad.  */
  if (region == NULL)
    return -1;

  switch (region->type)
    {
    case ERT_CLEANUP:
      /* A cleanup adds a zero filter to the beginning of the chain, but
	 there are special cases to look out for.  If there are *only*
	 cleanups along a path, then it compresses to a zero action.
	 Further, if there are multiple cleanups along a path, we only
	 need to represent one of them, as that is enough to trigger
	 entry to the landing pad at runtime.  */
      next = FUNC5 (ar_hash, region->outer);
      if (next <= 0)
	return 0;
      for (c = region->outer; c ; c = c->outer)
	if (c->type == ERT_CLEANUP)
	  return next;
      return FUNC3 (ar_hash, 0, next);

    case ERT_TRY:
      /* Process the associated catch regions in reverse order.
	 If there's a catch-all handler, then we don't need to
	 search outer regions.  Use a magic -3 value to record
	 that we haven't done the outer search.  */
      next = -3;
      for (c = region->u.try.last_catch; c ; c = c->u.catch.prev_catch)
	{
	  if (c->u.catch.type_list == NULL)
	    {
	      /* Retrieve the filter from the head of the filter list
		 where we have stored it (see assign_filter_values).  */
	      int filter
		= FUNC1 (FUNC2 (c->u.catch.filter_list));

	      next = FUNC3 (ar_hash, filter, 0);
	    }
	  else
	    {
	      /* Once the outer search is done, trigger an action record for
                 each filter we have.  */
	      tree flt_node;

	      if (next == -3)
		{
		  next = FUNC5 (ar_hash, region->outer);

		  /* If there is no next action, terminate the chain.  */
		  if (next == -1)
		    next = 0;
		  /* If all outer actions are cleanups or must_not_throw,
		     we'll have no action record for it, since we had wanted
		     to encode these states in the call-site record directly.
		     Add a cleanup action to the chain to catch these.  */
		  else if (next <= 0)
		    next = FUNC3 (ar_hash, 0, 0);
		}

	      flt_node = c->u.catch.filter_list;
	      for (; flt_node; flt_node = FUNC0 (flt_node))
		{
		  int filter = FUNC1 (FUNC2 (flt_node));
		  next = FUNC3 (ar_hash, filter, next);
		}
	    }
	}
      return next;

    case ERT_ALLOWED_EXCEPTIONS:
      /* An exception specification adds its filter to the
	 beginning of the chain.  */
      next = FUNC5 (ar_hash, region->outer);

      /* If there is no next action, terminate the chain.  */
      if (next == -1)
	next = 0;
      /* If all outer actions are cleanups or must_not_throw,
	 we'll have no action record for it, since we had wanted
	 to encode these states in the call-site record directly.
	 Add a cleanup action to the chain to catch these.  */
      else if (next <= 0)
	next = FUNC3 (ar_hash, 0, 0);

      return FUNC3 (ar_hash, region->u.allowed.filter, next);

    case ERT_MUST_NOT_THROW:
      /* A must-not-throw region with no inner handlers or cleanups
	 requires no call-site entry.  Note that this differs from
	 the no handler or cleanup case in that we do require an lsda
	 to be generated.  Return a magic -2 value to record this.  */
      return -2;

    case ERT_CATCH:
    case ERT_THROW:
      /* CATCH regions are handled in TRY above.  THROW regions are
	 for optimization information only and produce no output.  */
      return FUNC5 (ar_hash, region->outer);

    default:
      FUNC4 ();
    }
}