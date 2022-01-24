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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_support ; 
 int pascal_static_field_print ; 
 int /*<<< orphan*/  setprintlist ; 
 int /*<<< orphan*/  showprintlist ; 
 int /*<<< orphan*/  var_boolean ; 

void
FUNC2 (void)
{
  FUNC1
    (FUNC0 ("pascal_static-members", class_support, var_boolean,
		  (char *) &pascal_static_field_print,
		  "Set printing of pascal static members.",
		  &setprintlist),
     &showprintlist);
  /* Turn on printing of static fields.  */
  pascal_static_field_print = 1;

}