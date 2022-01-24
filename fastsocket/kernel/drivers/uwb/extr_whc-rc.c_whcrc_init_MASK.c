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
struct whcrc {int /*<<< orphan*/  event_work; int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  whcrc_event_work ; 

__attribute__((used)) static void FUNC3(struct whcrc *whcrc)
{
	FUNC2(&whcrc->irq_lock);
	FUNC1(&whcrc->cmd_wq);
	FUNC0(&whcrc->event_work, whcrc_event_work);
}