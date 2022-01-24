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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_vars ; 
 int /*<<< orphan*/  classes_info ; 
 int /*<<< orphan*/  objc_language_defn ; 
 int /*<<< orphan*/  print_object_command ; 
 int /*<<< orphan*/  selectors_info ; 

void
FUNC4 (void)
{
  FUNC3 (&objc_language_defn);
  FUNC2 ("selectors", selectors_info,    /* INFO SELECTORS command.  */
	    "All Objective-C selectors, or those matching REGEXP.");
  FUNC2 ("classes", classes_info, 	    /* INFO CLASSES   command.  */
	    "All Objective-C classes, or those matching REGEXP.");
  FUNC0 ("print-object", class_vars, print_object_command, 
	   "Ask an Objective-C object to print itself.");
  FUNC1 ("po", "print-object", class_vars, 1);
}