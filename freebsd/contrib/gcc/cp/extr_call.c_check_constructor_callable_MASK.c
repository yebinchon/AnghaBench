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
 int LOOKUP_CONSTRUCTOR_CALLABLE ; 
 int LOOKUP_NORMAL ; 
 int LOOKUP_NO_CONVERSION ; 
 int LOOKUP_ONLYCONVERTING ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  complete_ctor_identifier ; 

__attribute__((used)) static void
FUNC2 (tree type, tree expr)
{
  FUNC0 (NULL_TREE,
			     complete_ctor_identifier,
			     FUNC1 (NULL_TREE, expr),
			     type,
			     LOOKUP_NORMAL | LOOKUP_ONLYCONVERTING
			     | LOOKUP_NO_CONVERSION
			     | LOOKUP_CONSTRUCTOR_CALLABLE);
}