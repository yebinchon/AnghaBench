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
 scalar_t__ TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/ * bound_name ; 
 struct type* FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct type *
FUNC3 (struct type *type, int i)
{
  type = FUNC1 (type);

  if (FUNC0 (type) == TYPE_CODE_STRUCT)
    return FUNC2 (type, bound_name[2 * i - 2], 1);
  else
    return NULL;
}