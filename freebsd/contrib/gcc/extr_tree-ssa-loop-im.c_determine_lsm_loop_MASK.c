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
struct mem_ref {int dummy; } ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  edge ;
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ref*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ref*) ; 
 struct mem_ref* FUNC5 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct loop*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct loop*,struct mem_ref*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct loop*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC9 (struct loop *loop)
{
  unsigned n_exits;
  edge *exits = FUNC6 (loop, &n_exits);
  bitmap clobbered_vops;
  struct mem_ref *mem_refs;

  if (!FUNC8 (loop, exits, n_exits))
    {
      FUNC3 (exits);
      return;
    }

  /* Find the memory references in LOOP.  */
  clobbered_vops = FUNC0 (NULL);
  mem_refs = FUNC5 (loop, clobbered_vops);

  /* Find the vops that are used for more than one reference.  */
  FUNC2 (mem_refs, clobbered_vops);

  /* Hoist all suitable memory references.  */
  FUNC7 (loop, mem_refs, clobbered_vops, exits, n_exits);

  FUNC4 (mem_refs);
  FUNC3 (exits);
  FUNC1 (clobbered_vops);
}