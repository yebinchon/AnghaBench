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
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC4 (tree handled, tree type)
{
  tree t;

  /* We can check for exact matches without front-end help.  */
  if (! &lang_eh_type_covers)
    {
      for (t = handled; t ; t = FUNC0 (t))
	if (FUNC1 (t) == type)
	  return 1;
    }
  else
    {
      for (t = handled; t ; t = FUNC0 (t))
	if (FUNC2) (FUNC1 (t), type))
	  return 1;
    }

  return 0;
}