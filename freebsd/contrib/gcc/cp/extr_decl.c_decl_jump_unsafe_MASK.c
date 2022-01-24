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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (tree decl)
{
  if (FUNC1 (decl) != VAR_DECL || FUNC2 (decl)
      || FUNC3 (decl) == error_mark_node)
    return 0;

  if (FUNC4 (FUNC3 (decl))
      || FUNC0 (decl))
    return 2;

  if (FUNC5 (FUNC3 (decl)))
    return 0;

  /* The POD stuff is just pedantry; why should it matter if the class
     contains a field of pointer to member type?  */
  return 1;
}