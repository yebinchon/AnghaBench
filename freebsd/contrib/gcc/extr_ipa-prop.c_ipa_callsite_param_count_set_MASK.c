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
struct cgraph_edge {int dummy; } ;
struct TYPE_2__ {int ipa_param_num; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct cgraph_edge*) ; 

void
FUNC1 (struct cgraph_edge *cs, int i)
{
  FUNC0 (cs)->ipa_param_num = i;
}