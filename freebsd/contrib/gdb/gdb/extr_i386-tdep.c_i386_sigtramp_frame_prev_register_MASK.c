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
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame_info*,void**,int,int*,int*,int /*<<< orphan*/ *,int*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,void**) ; 

__attribute__((used)) static void
FUNC2 (struct frame_info *next_frame,
				   void **this_cache,
				   int regnum, int *optimizedp,
				   enum lval_type *lvalp, CORE_ADDR *addrp,
				   int *realnump, void *valuep)
{
  /* Make sure we've initialized the cache.  */
  FUNC1 (next_frame, this_cache);

  FUNC0 (next_frame, this_cache, regnum,
			    optimizedp, lvalp, addrp, realnump, valuep);
}