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
struct loop {struct loop* outer; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct loop*,scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct loop*,scalar_t__) ; 

__attribute__((used)) static tree
FUNC3 (struct loop *wrto_loop, struct loop *use_loop,
				  tree version, bool *folded_casts)
{
  bool val = false;
  tree ev = version, tmp;

  if (folded_casts)
    *folded_casts = false;
  while (1)
    {
      tmp = FUNC0 (use_loop, ev);
      ev = FUNC2 (use_loop, tmp);

      if (folded_casts && tmp != ev)
	*folded_casts = true;

      if (use_loop == wrto_loop)
	return ev;

      /* If the value of the use changes in the inner loop, we cannot express
	 its value in the outer loop (we might try to return interval chrec,
	 but we do not have a user for it anyway)  */
      if (!FUNC1 (ev, use_loop->num, &val)
	  || !val)
	return chrec_dont_know;

      use_loop = use_loop->outer;
    }
}