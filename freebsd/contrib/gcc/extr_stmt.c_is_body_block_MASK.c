#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ no_body_blocks; } ;

/* Variables and functions */
 scalar_t__ BLOCK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_1__ lang_hooks ; 

int
FUNC2 (tree stmt)
{
  if (lang_hooks.no_body_blocks)
    return 0;

  if (FUNC1 (stmt) == BLOCK)
    {
      tree parent = FUNC0 (stmt);

      if (parent && FUNC1 (parent) == BLOCK)
	{
	  tree grandparent = FUNC0 (parent);

	  if (grandparent && FUNC1 (grandparent) == FUNCTION_DECL)
	    return 1;
	}
    }

  return 0;
}