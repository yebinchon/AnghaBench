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
struct pex_time {int dummy; } ;
struct pex_obj {int count; int /*<<< orphan*/ * time; int /*<<< orphan*/ * status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pex_time*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pex_time*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pex_obj*,int /*<<< orphan*/ ,char const**,int*) ; 

int
FUNC3 (struct pex_obj *obj, int count, struct pex_time *vector)
{
  if (obj->status == NULL)
    {
      const char *errmsg;
      int err;

      if (!FUNC2 (obj, 0, &errmsg, &err))
	return 0;
    }

  if (obj->time == NULL)
    return 0;

  if (count > obj->count)
    {
      FUNC1 (vector + obj->count, 0,
	      (count - obj->count) * sizeof (struct pex_time));
      count = obj->count;
    }

  FUNC0 (vector, obj->time, count * sizeof (struct pex_time));

  return 1;
}