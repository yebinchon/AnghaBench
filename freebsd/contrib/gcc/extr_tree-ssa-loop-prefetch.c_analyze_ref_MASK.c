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
struct loop {int dummy; } ;
struct ar_data {int* step; int* delta; int /*<<< orphan*/  stmt; struct loop* loop; } ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 scalar_t__ COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ar_data*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  idx_analyze_ref ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8 (struct loop *loop, tree *ref_p, tree *base,
	     HOST_WIDE_INT *step, HOST_WIDE_INT *delta,
	     tree stmt)
{
  struct ar_data ar_data;
  tree off;
  HOST_WIDE_INT bit_offset;
  tree ref = *ref_p;

  *step = 0;
  *delta = 0;

  /* First strip off the component references.  Ignore bitfields.  */
  if (FUNC2 (ref) == COMPONENT_REF
      && FUNC1 (FUNC4 (ref, 1)))
    ref = FUNC4 (ref, 0);

  *ref_p = ref;

  for (; FUNC2 (ref) == COMPONENT_REF; ref = FUNC4 (ref, 0))
    {
      off = FUNC0 (FUNC4 (ref, 1));
      bit_offset = FUNC3 (off);
      FUNC6 (bit_offset % BITS_PER_UNIT == 0);
      
      *delta += bit_offset / BITS_PER_UNIT;
    }

  *base = FUNC7 (ref);
  ar_data.loop = loop;
  ar_data.stmt = stmt;
  ar_data.step = step;
  ar_data.delta = delta;
  return FUNC5 (base, idx_analyze_ref, &ar_data);
}