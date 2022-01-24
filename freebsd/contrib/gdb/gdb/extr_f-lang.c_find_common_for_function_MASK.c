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
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  owning_function; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* SAVED_F77_COMMON_PTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* head_common_list ; 

SAVED_F77_COMMON_PTR
FUNC1 (char *name, char *funcname)
{

  SAVED_F77_COMMON_PTR tmp;

  tmp = head_common_list;

  while (tmp != NULL)
    {
      if (FUNC0 (tmp->name, name)
	  && FUNC0 (tmp->owning_function, funcname))
	return (tmp);
      else
	tmp = tmp->next;
    }
  return (NULL);
}