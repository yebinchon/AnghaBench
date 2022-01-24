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
typedef  int /*<<< orphan*/  copy_body_data ;

/* Variables and functions */
 scalar_t__ PARM_DECL ; 
 scalar_t__ RESULT_DECL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC3 (tree decl, copy_body_data *id)
{
  if (FUNC0 (decl) == PARM_DECL || FUNC0 (decl) == RESULT_DECL)
    return FUNC2 (decl, id);
  else
    return FUNC1 (decl, id);
}