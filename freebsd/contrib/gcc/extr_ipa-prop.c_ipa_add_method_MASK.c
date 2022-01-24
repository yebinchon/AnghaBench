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
struct cgraph_node {int dummy; } ;
typedef  int /*<<< orphan*/  ipa_methodlist_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3 (ipa_methodlist_p * wl, struct cgraph_node *mt)
{
  ipa_methodlist_p temp;

  temp = FUNC0 ();
  FUNC1 (temp, mt);
  FUNC2 (temp, *wl);
  *wl = temp;
}