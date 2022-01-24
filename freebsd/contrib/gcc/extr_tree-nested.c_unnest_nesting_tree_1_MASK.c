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
struct nesting_info {int /*<<< orphan*/  context; } ;
struct cgraph_node {scalar_t__ origin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct cgraph_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgraph_node*) ; 

__attribute__((used)) static void
FUNC3 (struct nesting_info *root)
{
  struct cgraph_node *node = FUNC1 (root->context);

  /* For nested functions update the cgraph to reflect unnesting.
     We also delay finalizing of these functions up to this point.  */
  if (node->origin)
    {
       FUNC2 (FUNC1 (root->context));
       FUNC0 (root->context, true);
    }
}