#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ type; void* min; void* max; int /*<<< orphan*/ * equiv; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ value_range_t ;
typedef  void* tree ;
typedef  enum ssa_prop_result { ____Placeholder_ssa_prop_result } ssa_prop_result ;
typedef  TYPE_4__* edge ;
struct TYPE_17__ {int flags; TYPE_2__* dest; TYPE_1__* src; } ;
struct TYPE_15__ {int index; } ;
struct TYPE_14__ {int index; } ;
typedef  int /*<<< orphan*/  TREE_OVERFLOW ;

/* Variables and functions */
 int EDGE_EXECUTABLE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 void* FUNC0 (void*,int) ; 
 TYPE_4__* FUNC1 (void*,int) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int SSA_PROP_INTERESTING ; 
 int SSA_PROP_NOT_INTERESTING ; 
 int SSA_PROP_VARYING ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ VR_RANGE ; 
 int /*<<< orphan*/  VR_UNDEFINED ; 
 scalar_t__ VR_VARYING ; 
 int FUNC9 (void*,void*) ; 
 void* FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,char*,...) ; 
 TYPE_3__* FUNC14 (void*) ; 
 scalar_t__ FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 
 void* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC24 (void*) ; 
 scalar_t__ FUNC25 (void*) ; 
 int /*<<< orphan*/  FUNC26 (void*,void*) ; 

__attribute__((used)) static enum ssa_prop_result
FUNC27 (tree phi)
{
  int i;
  tree lhs = FUNC3 (phi);
  value_range_t *lhs_vr = FUNC14 (lhs);
  value_range_t vr_result = { VR_UNDEFINED, NULL_TREE, NULL_TREE, NULL };

  FUNC11 (&vr_result, lhs_vr);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC13 (dump_file, "\nVisiting PHI node: ");
      FUNC19 (dump_file, phi, dump_flags);
    }

  for (i = 0; i < FUNC2 (phi); i++)
    {
      edge e = FUNC1 (phi, i);

      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC13 (dump_file,
	      "\n    Argument #%d (%d -> %d %sexecutable)\n",
	      i, e->src->index, e->dest->index,
	      (e->flags & EDGE_EXECUTABLE) ? "" : "not ");
	}

      if (e->flags & EDGE_EXECUTABLE)
	{
	  tree arg = FUNC0 (phi, i);
	  value_range_t vr_arg;

	  if (FUNC5 (arg) == SSA_NAME)
	    vr_arg = *(FUNC14 (arg));
	  else
	    {
	      if (FUNC15 (arg))
		{
		  arg = FUNC10 (arg);
		  TREE_OVERFLOW (arg) = 0;
		}

	      vr_arg.type = VR_RANGE;
	      vr_arg.min = arg;
	      vr_arg.max = arg;
	      vr_arg.equiv = NULL;
	    }

	  if (dump_file && (dump_flags & TDF_DETAILS))
	    {
	      FUNC13 (dump_file, "\t");
	      FUNC19 (dump_file, arg, dump_flags);
	      FUNC13 (dump_file, "\n\tValue: ");
	      FUNC12 (dump_file, &vr_arg);
	      FUNC13 (dump_file, "\n");
	    }

	  FUNC23 (&vr_result, &vr_arg);

	  if (vr_result.type == VR_VARYING)
	    break;
	}
    }

  if (vr_result.type == VR_VARYING)
    goto varying;

  /* To prevent infinite iterations in the algorithm, derive ranges
     when the new value is slightly bigger or smaller than the
     previous one.  */
  if (lhs_vr->type == VR_RANGE && vr_result.type == VR_RANGE)
    {
      if (!FUNC4 (FUNC6 (lhs)))
	{
	  int cmp_min = FUNC9 (lhs_vr->min, vr_result.min);
	  int cmp_max = FUNC9 (lhs_vr->max, vr_result.max);

	  /* If the new minimum is smaller or larger than the previous
	     one, go all the way to -INF.  In the first case, to avoid
	     iterating millions of times to reach -INF, and in the
	     other case to avoid infinite bouncing between different
	     minimums.  */
	  if (cmp_min > 0 || cmp_min < 0)
	    {
	      /* If we will end up with a (-INF, +INF) range, set it
		 to VARYING.  */
	      if (FUNC24 (vr_result.max))
		goto varying;

	      if (!FUNC16 (FUNC6 (vr_result.min))
		  || !FUNC26 (lhs, phi))
		vr_result.min = FUNC8 (FUNC6 (vr_result.min));
	      else if (FUNC21 (FUNC6 (vr_result.min)))
		vr_result.min =
		  FUNC17 (FUNC6 (vr_result.min));
	      else
		goto varying;
	    }

	  /* Similarly, if the new maximum is smaller or larger than
	     the previous one, go all the way to +INF.  */
	  if (cmp_max < 0 || cmp_max > 0)
	    {
	      /* If we will end up with a (-INF, +INF) range, set it
		 to VARYING.  */
	      if (FUNC25 (vr_result.min))
		goto varying;

	      if (!FUNC16 (FUNC6 (vr_result.max))
		  || !FUNC26 (lhs, phi))
		vr_result.max = FUNC7 (FUNC6 (vr_result.max));
	      else if (FUNC21 (FUNC6 (vr_result.max)))
		vr_result.max =
		  FUNC18 (FUNC6 (vr_result.max));
	      else
		goto varying;
	    }
	}
    }

  /* If the new range is different than the previous value, keep
     iterating.  */
  if (FUNC22 (lhs, &vr_result))
    return SSA_PROP_INTERESTING;

  /* Nothing changed, don't add outgoing edges.  */
  return SSA_PROP_NOT_INTERESTING;

  /* No match found.  Set the LHS to VARYING.  */
varying:
  FUNC20 (lhs_vr);
  return SSA_PROP_VARYING;
}