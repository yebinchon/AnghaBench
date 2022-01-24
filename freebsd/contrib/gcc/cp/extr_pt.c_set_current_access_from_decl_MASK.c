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
 int /*<<< orphan*/  access_private_node ; 
 int /*<<< orphan*/  access_protected_node ; 
 int /*<<< orphan*/  access_public_node ; 
 int /*<<< orphan*/  current_access_specifier ; 

__attribute__((used)) static void
FUNC2 (tree decl)
{
  if (FUNC0 (decl))
    current_access_specifier = access_private_node;
  else if (FUNC1 (decl))
    current_access_specifier = access_protected_node;
  else
    current_access_specifier = access_public_node;
}