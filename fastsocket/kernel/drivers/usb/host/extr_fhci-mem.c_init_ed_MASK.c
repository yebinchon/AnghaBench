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
struct ed {int /*<<< orphan*/  node; int /*<<< orphan*/  td_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ed*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ed *ed)
{
	FUNC1(ed, 0, sizeof(*ed));
	FUNC0(&ed->td_list);
	FUNC0(&ed->node);
}