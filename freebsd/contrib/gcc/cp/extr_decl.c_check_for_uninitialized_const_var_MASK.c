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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (tree decl)
{
  tree type = FUNC3 (decl);

  /* ``Unless explicitly declared extern, a const object does not have
     external linkage and must be initialized. ($8.4; $12.1)'' ARM
     7.1.6 */
  if (FUNC2 (decl) == VAR_DECL
      && FUNC2 (type) != REFERENCE_TYPE
      && FUNC0 (type)
      && !FUNC4 (type)
      && !FUNC1 (decl))
    FUNC5 ("uninitialized const %qD", decl);
}