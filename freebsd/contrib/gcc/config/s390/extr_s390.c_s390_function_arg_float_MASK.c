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
typedef  scalar_t__ tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int DDmode ; 
 int DFmode ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 int SDmode ; 
 int SFmode ; 
 scalar_t__ TARGET_SOFT_FLOAT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static bool
FUNC5 (enum machine_mode mode, tree type)
{
  int size = FUNC4 (mode, type);
  if (size > 8)
    return false;

  /* Soft-float changes the ABI: no floating-point registers are used.  */
  if (TARGET_SOFT_FLOAT)
    return false;

  /* No type info available for some library calls ...  */
  if (!type)
    return mode == SFmode || mode == DFmode || mode == SDmode || mode == DDmode;

  /* The ABI says that record types with a single member are treated
     just like that member would be.  */
  while (FUNC1 (type) == RECORD_TYPE)
    {
      tree field, single = NULL_TREE;

      for (field = FUNC3 (type); field; field = FUNC0 (field))
	{
	  if (FUNC1 (field) != FIELD_DECL)
	    continue;

	  if (single == NULL_TREE)
	    single = FUNC2 (field);
	  else
	    return false;
	}

      if (single == NULL_TREE)
	return false;
      else
	type = single;
    }

  return FUNC1 (type) == REAL_TYPE;
}