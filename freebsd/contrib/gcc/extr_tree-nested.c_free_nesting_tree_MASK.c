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
struct nesting_info {struct nesting_info* next; int /*<<< orphan*/  var_map; struct nesting_info* inner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nesting_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct nesting_info *root)
{
  struct nesting_info *next;
  do
    {
      if (root->inner)
	FUNC2 (root->inner);
      FUNC1 (root->var_map);
      next = root->next;
      FUNC0 (root);
      root = next;
    }
  while (root);
}