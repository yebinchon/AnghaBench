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
struct sound_queue {scalar_t__ busy; int /*<<< orphan*/  sync_queue; int /*<<< orphan*/  open_queue; int /*<<< orphan*/  action_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct sound_queue *sq)
{
	FUNC0(&sq->action_queue);
	FUNC0(&sq->open_queue);
	FUNC0(&sq->sync_queue);
	sq->busy = 0;
}