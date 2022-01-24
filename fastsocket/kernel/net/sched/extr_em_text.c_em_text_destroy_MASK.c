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
struct tcf_proto {int dummy; } ;
struct tcf_ematch {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct tcf_ematch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tcf_proto *tp, struct tcf_ematch *m)
{
	FUNC1(FUNC0(m)->config);
}