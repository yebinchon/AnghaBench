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
struct vbase {int /*<<< orphan*/  vbasetype; struct vbase* next; } ;
struct type {int dummy; } ;

/* Variables and functions */
 struct type* FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 struct vbase* current_vbase_list ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 

int
FUNC5 (struct type *dclass)
{
  int i;
  struct vbase *tmp_vbase;
  struct type *primary;

  primary = FUNC1 (dclass) ? FUNC0 (dclass) : NULL;

  if (!primary)
    return FUNC4 (dclass);

  current_vbase_list = NULL;
  FUNC3 (dclass);

  for (i = 0, tmp_vbase = current_vbase_list; tmp_vbase != NULL; tmp_vbase = tmp_vbase->next)
    {
      if (FUNC2 (tmp_vbase->vbasetype, primary) >= 0)
	continue;
      i++;
    }
  return i;
}