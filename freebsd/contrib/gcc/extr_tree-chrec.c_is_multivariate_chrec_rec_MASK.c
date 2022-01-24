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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool 
FUNC4 (tree chrec, unsigned int rec_var)
{
  if (chrec == NULL_TREE)
    return false;
  
  if (FUNC3 (chrec) == POLYNOMIAL_CHREC)
    {
      if (FUNC2 (chrec) != rec_var)
	return true;
      else
	return (FUNC4 (FUNC0 (chrec), rec_var) 
		|| FUNC4 (FUNC1 (chrec), rec_var));
    }
  else
    return false;
}