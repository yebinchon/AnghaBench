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
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ pedantic ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC4 (tree decl)
{
  tree ret;

  if (pedantic || FUNC0 (decl) == BLKmode)
    return decl;

  ret = FUNC2 (decl);
  /* Avoid unwanted tree sharing between the initializer and current
     function's body where the tree can be modified e.g. by the
     gimplifier.  */
  if (ret != decl && FUNC1 (decl))
    ret = FUNC3 (ret);
  return ret;
}