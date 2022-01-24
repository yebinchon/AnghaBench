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
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;

/* Variables and functions */
 int RETURN_VALUE_STRUCT_CONVENTION ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC1 (struct type*) ; 
 int FUNC2 (struct gdbarch*,struct type*,struct regcache*,void*,void const*) ; 

__attribute__((used)) static enum return_value_convention
FUNC3 (struct gdbarch *gdbarch, struct type *valtype,
		      struct regcache *regcache, void *readbuf,
		      const void *writebuf)
{
  if ((FUNC0 (valtype) == TYPE_CODE_STRUCT
       || FUNC0 (valtype) == TYPE_CODE_UNION)
      && !((FUNC1 (valtype) == 16 || FUNC1 (valtype) == 8))
      && !(FUNC1 (valtype) == 1
	   || FUNC1 (valtype) == 2
	   || FUNC1 (valtype) == 4
	   || FUNC1 (valtype) == 8)) 
    return RETURN_VALUE_STRUCT_CONVENTION; 
  else 
    return FUNC2 (gdbarch, valtype, regcache,
					     readbuf, writebuf); 
}