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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ current_scope ; 
 scalar_t__ file_scope ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ visible_builtins ; 

void
FUNC5 (void)
{
  tree decl;

  if (file_scope)
    return;

  FUNC3 ();
  file_scope = current_scope;

  FUNC4 ();

  for (decl = visible_builtins; decl; decl = FUNC1 (decl))
    FUNC2 (FUNC0 (decl), decl, file_scope,
	  /*invisible=*/false, /*nested=*/true);
}