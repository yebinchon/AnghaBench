#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ text_base; scalar_t__ text_size; } ;
struct so_list {scalar_t__ pa64_solib_desc_addr; struct so_list* next; TYPE_1__ pa64_solib_desc; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 struct so_list* so_list_head ; 

CORE_ADDR
FUNC0 (CORE_ADDR addr)
{
  struct so_list *so_list = so_list_head;
  CORE_ADDR retval = 0;

  while (so_list)
    {
      if (so_list->pa64_solib_desc.text_base <= addr
	  && ((so_list->pa64_solib_desc.text_base
	       + so_list->pa64_solib_desc.text_size)
	      > addr))
	{
	  retval = so_list->pa64_solib_desc_addr;
	  break;
	}
      so_list = so_list->next;
    }
  return retval;
}