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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  splay_tree ;
typedef  TYPE_1__* record_layout_info ;
struct TYPE_4__ {scalar_t__ t; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__* FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void
FUNC7 (record_layout_info rli,
		   splay_tree offsets, tree *next_field)
{
  /* Chain to hold all the new FIELD_DECLs which stand in for base class
     subobjects.  */
  tree t = rli->t;
  int n_baseclasses = FUNC1 (FUNC5 (t));
  int i;

  /* The primary base class is always allocated first.  */
  if (FUNC3 (t))
    next_field = FUNC6 (rli, FUNC4 (t),
				   offsets, next_field);

  /* Now allocate the rest of the bases.  */
  for (i = 0; i < n_baseclasses; ++i)
    {
      tree base_binfo;

      base_binfo = FUNC0 (FUNC5 (t), i);

      /* The primary base was already allocated above, so we don't
	 need to allocate it again here.  */
      if (base_binfo == FUNC4 (t))
	continue;

      /* Virtual bases are added at the end (a primary virtual base
	 will have already been added).  */
      if (FUNC2 (base_binfo))
	continue;

      next_field = FUNC6 (rli, base_binfo,
				     offsets, next_field);
    }
}