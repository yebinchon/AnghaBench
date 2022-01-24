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
struct TYPE_2__ {scalar_t__ begin; scalar_t__ end; int /*<<< orphan*/ * stop_at; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* methcalls ; 
 unsigned int nmethcalls ; 

int 
FUNC2 (CORE_ADDR pc, CORE_ADDR *new_pc)
{
  unsigned int i;

  FUNC1 ();
  if (new_pc != NULL)
    {
      *new_pc = 0;
    }

  for (i = 0; i < nmethcalls; i++) 
    if ((pc >= methcalls[i].begin) && (pc < methcalls[i].end)) 
      {
	if (methcalls[i].stop_at != NULL) 
	  return FUNC0 (methcalls[i].stop_at, 
					      pc, new_pc);
	else 
	  return 0;
      }

  return 0;
}