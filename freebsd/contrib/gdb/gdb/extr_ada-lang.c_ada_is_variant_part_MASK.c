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
 scalar_t__ TYPE_CODE_UNION ; 
 struct type* FUNC1 (struct type*,int) ; 
 struct type* FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct type*,int) ; 

int
FUNC4 (struct type *type, int field_num)
{
  struct type *field_type = FUNC1 (type, field_num);
  return (FUNC0 (field_type) == TYPE_CODE_UNION
	  || (FUNC3 (type, field_num)
	      && FUNC0 (FUNC2 (field_type)) ==
	      TYPE_CODE_UNION));
}