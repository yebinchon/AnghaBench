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
typedef  union exp_element {int dummy; } exp_element ;
struct expression {union exp_element* elts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct expression* expout ; 
 int expout_ptr ; 
 int expout_size ; 
 scalar_t__ FUNC1 (char*,scalar_t__) ; 

void
FUNC2 (union exp_element expelt)
{
  if (expout_ptr >= expout_size)
    {
      expout_size *= 2;
      expout = (struct expression *)
	FUNC1 ((char *) expout, sizeof (struct expression)
		  + FUNC0 (expout_size));
    }
  expout->elts[expout_ptr++] = expelt;
}