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
typedef  scalar_t__ uword ;
struct object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct object*) ; 
 struct object* FUNC1 (int) ; 

void
FUNC2 (void *begin)
{
  struct object *ob;

  /* If .eh_frame is empty, don't register at all.  */
  if (*(uword *) begin == 0)
    return;

  ob = FUNC1 (sizeof (struct object));
  FUNC0 (begin, ob);
}