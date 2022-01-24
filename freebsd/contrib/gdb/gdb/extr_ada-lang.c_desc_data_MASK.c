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
struct type {int dummy; } ;

/* Variables and functions */
 struct type* FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 struct value* FUNC3 (struct value*) ; 
 struct value* FUNC4 (struct value**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct value *
FUNC5 (struct value *arr)
{
  struct type *type = FUNC0 (arr);
  if (FUNC2 (type))
    return FUNC3 (arr);
  else if (FUNC1 (type))
    return FUNC4 (&arr, NULL, "P_ARRAY", NULL,
			     "Bad GNAT array descriptor");
  else
    return NULL;
}