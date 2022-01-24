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
struct type {int dummy; } ;

/* Variables and functions */
 int TARGET_CHAR_BIT ; 
 int TARGET_PTR_BIT ; 
 int FUNC0 (struct type*) ; 
 struct type* FUNC1 () ; 

int
FUNC2 (void)
{
  struct type *objtype = FUNC1 ();
  if (objtype == NULL)
    return (2 * TARGET_PTR_BIT / TARGET_CHAR_BIT);
  else
    return FUNC0 (objtype);
}