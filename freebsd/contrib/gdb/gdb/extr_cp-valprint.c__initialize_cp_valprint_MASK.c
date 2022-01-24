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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  dont_print_statmem_obstack ; 
 int /*<<< orphan*/  dont_print_vb_obstack ; 
 scalar_t__ objectprint ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setprintlist ; 
 int /*<<< orphan*/  showprintlist ; 
 int static_field_print ; 
 int /*<<< orphan*/  var_boolean ; 
 scalar_t__ vtblprint ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  xmalloc ; 

void
FUNC4 (void)
{
  FUNC1
    (FUNC0 ("static-members", class_support, var_boolean,
		  (char *) &static_field_print,
		  "Set printing of C++ static members.",
		  &setprintlist),
     &showprintlist);
  /* Turn on printing of static fields.  */
  static_field_print = 1;

  FUNC1
    (FUNC0 ("vtbl", class_support, var_boolean, (char *) &vtblprint,
		  "Set printing of C++ virtual function tables.",
		  &setprintlist),
     &showprintlist);

  FUNC1
    (FUNC0 ("object", class_support, var_boolean, (char *) &objectprint,
	      "Set printing of object's derived type based on vtable info.",
		  &setprintlist),
     &showprintlist);

  /* Give people the defaults which they are used to.  */
  objectprint = 0;
  vtblprint = 0;
  FUNC2 (&dont_print_vb_obstack, 32 * sizeof (struct type *));
  FUNC3 (&dont_print_statmem_obstack,
			      32 * sizeof (CORE_ADDR), sizeof (CORE_ADDR),
			      xmalloc, xfree);
}