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
typedef  void* rtx ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* first_insn ; 
 void* last_insn ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2 (rtx first)
{
  rtx last;

  FUNC1 ();

  for (last = first; last && FUNC0 (last); last = FUNC0 (last));

  first_insn = first;
  last_insn = last;
}