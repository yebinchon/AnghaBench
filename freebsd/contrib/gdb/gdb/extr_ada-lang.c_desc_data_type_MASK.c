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
 struct type* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct type* FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct type*) ; 

__attribute__((used)) static struct type *
FUNC7 (struct type *type)
{
  type = FUNC1 (type);

  /* NOTE: The following is bogus; see comment in desc_bounds. */
  if (FUNC3 (type))
    return FUNC4
      (FUNC1 (FUNC0 (FUNC6 (type), 1)));
  else if (FUNC2 (type))
    return FUNC5 (type, "P_ARRAY", 1);
  else
    return NULL;
}