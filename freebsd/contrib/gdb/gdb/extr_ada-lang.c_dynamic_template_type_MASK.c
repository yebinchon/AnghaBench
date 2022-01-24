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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 struct type* FUNC3 (struct type*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct type*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct type *
FUNC6 (struct type *type)
{
  FUNC0 (type);

  if (type == NULL || FUNC2 (type) != TYPE_CODE_STRUCT
      || FUNC4 (type) == NULL)
    return NULL;
  else
    {
      int len = FUNC5 (FUNC4 (type));
      if (len > 6 && FUNC1 (FUNC4 (type) + len - 6, "___XVE"))
	return type;
      else
	return FUNC3 (type, "___XVE");
    }
}