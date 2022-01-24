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
struct uwb_rc_neh {int /*<<< orphan*/  list_node; } ;
struct uwb_rc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*,struct uwb_rc_neh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
	FUNC0(rc, neh);
	FUNC1(&neh->list_node);
}