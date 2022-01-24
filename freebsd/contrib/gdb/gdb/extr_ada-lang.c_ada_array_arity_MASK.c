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
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 struct type* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct type* FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*) ; 

int
FUNC6 (struct type *type)
{
  int arity;

  if (type == NULL)
    return 0;

  type = FUNC4 (type);

  arity = 0;
  if (FUNC0 (type) == TYPE_CODE_STRUCT)
    return FUNC3 (FUNC5 (type));
  else
    while (FUNC0 (type) == TYPE_CODE_ARRAY)
      {
	arity += 1;
	type = FUNC2 (FUNC1 (type));
      }

  return arity;
}