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
typedef  int /*<<< orphan*/  DOUBLEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type const*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int /*<<< orphan*/ * FUNC1 (struct type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct type const*) ; 
 int /*<<< orphan*/  FUNC3 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

DOUBLEST
FUNC6 (const void *addr, const struct type *type)
{
  DOUBLEST retval;

  FUNC5 (FUNC0 (type) == TYPE_CODE_FLT);

  if (FUNC1 (type) == NULL)
    /* Not all code remembers to set the FLOATFORMAT (language
       specific code? stabs?) so handle that here as a special case.  */
    return FUNC3 (addr, FUNC2 (type));

  FUNC4 (FUNC1 (type), addr, &retval);
  return retval;
}