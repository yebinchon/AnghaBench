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
struct mem_ref_group {int dummy; } ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mem_ref_group* FUNC1 (struct mem_ref_group**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ref_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3 (struct loop *loop, struct mem_ref_group **refs,
			      tree ref, bool write_p, tree stmt)
{
  tree base;
  HOST_WIDE_INT step, delta;
  struct mem_ref_group *agrp;

  if (!FUNC0 (loop, &ref, &base, &step, &delta, stmt))
    return;

  /* Now we know that REF = &BASE + STEP * iter + DELTA, where DELTA and STEP
     are integer constants.  */
  agrp = FUNC1 (refs, base, step);
  FUNC2 (agrp, stmt, ref, delta, write_p);
}