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
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

bool
FUNC3 (tree name, tree type)
{
  tree ctor_name;

  if (!name)
    return false;

  if (FUNC1 (name) != IDENTIFIER_NODE)
    return false;

  ctor_name = FUNC2 (type);
  if (name == ctor_name)
    return true;
  if (FUNC0 (ctor_name)
      && name == FUNC0 (ctor_name))
    return true;
  return false;
}