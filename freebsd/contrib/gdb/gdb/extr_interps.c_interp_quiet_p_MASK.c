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
struct interp {int quiet_p; } ;
struct TYPE_2__ {int quiet_p; } ;

/* Variables and functions */
 TYPE_1__* current_interpreter ; 

int
FUNC0 (struct interp *interp)
{
  if (interp != NULL)
    return interp->quiet_p;
  else
    return current_interpreter->quiet_p;
}