#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  TYPE_2__* convert_optab ;
struct TYPE_5__ {TYPE_1__** handlers; } ;
struct TYPE_4__ {scalar_t__ libfunc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 

void
FUNC1 (convert_optab optable, enum machine_mode tmode,
		  enum machine_mode fmode, const char *name)
{
  if (name)
    optable->handlers[tmode][fmode].libfunc = FUNC0 (name);
  else
    optable->handlers[tmode][fmode].libfunc = 0;
}