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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/ * FUNC2 (struct type*) ; 

__attribute__((used)) static int
FUNC3 (struct type *type0, struct type *type1)
{
  if (type0 == type1)
    return 1;
  if (type0 == NULL || type1 == NULL
      || FUNC1 (type0) != FUNC1 (type1))
    return 0;
  if ((FUNC1 (type0) == TYPE_CODE_STRUCT
       || FUNC1 (type0) == TYPE_CODE_ENUM)
      && FUNC2 (type0) != NULL && FUNC2 (type1) != NULL
      && FUNC0 (FUNC2 (type0), FUNC2 (type1)))
    return 1;

  return 0;
}