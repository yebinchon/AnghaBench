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
 int TYPE_FLAG_ADDRESS_CLASS_ALL ; 
 int TYPE_FLAG_CODE_SPACE ; 
 int TYPE_FLAG_DATA_SPACE ; 
 int FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*,int,int /*<<< orphan*/ *) ; 

struct type *
FUNC2 (struct type *type, int space_flag)
{
  struct type *ntype;
  int new_flags = ((FUNC0 (type)
		    & ~(TYPE_FLAG_CODE_SPACE | TYPE_FLAG_DATA_SPACE
		        | TYPE_FLAG_ADDRESS_CLASS_ALL))
		   | space_flag);

  return FUNC1 (type, new_flags, NULL);
}