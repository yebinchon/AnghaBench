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
struct value {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*,int,struct value**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct value* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 int /*<<< orphan*/  target_has_execution ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct value* FUNC6 (struct value*) ; 
 struct value* FUNC7 (char*,scalar_t__) ; 

CORE_ADDR 
FUNC8 (char *classname)
{
  struct value * function, *classval;

  if (! target_has_execution)
    {
      /* Can't call into inferior to lookup class.  */
      return 0;
    }

  if (FUNC3("objc_lookUpClass", 0, 0))
    function = FUNC2("objc_lookUpClass");
  else if (FUNC3 ("objc_lookup_class", 0, 0))
    function = FUNC2("objc_lookup_class");
  else
    {
      FUNC1 (&symfile_complaints, "no way to lookup Objective-C classes");
      return 0;
    }

  classval = FUNC7 (classname, FUNC4 (classname) + 1);
  classval = FUNC6 (classval);
  return (CORE_ADDR) FUNC5 (FUNC0 (function, 
							   1, &classval));
}