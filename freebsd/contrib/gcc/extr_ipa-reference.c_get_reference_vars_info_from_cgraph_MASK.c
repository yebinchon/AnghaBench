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
struct cgraph_node {int /*<<< orphan*/  decl; } ;
typedef  int /*<<< orphan*/  ipa_reference_vars_info_t ;
struct TYPE_2__ {int /*<<< orphan*/  reference_vars_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline ipa_reference_vars_info_t
FUNC1 (struct cgraph_node * node)
{
  return FUNC0 (node->decl)->reference_vars_info;
}