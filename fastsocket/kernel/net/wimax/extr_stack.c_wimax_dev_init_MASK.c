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
struct wimax_dev {int /*<<< orphan*/  mutex_reset; int /*<<< orphan*/  mutex; int /*<<< orphan*/  id_table_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __WIMAX_ST_NULL ; 
 int /*<<< orphan*/  FUNC1 (struct wimax_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct wimax_dev *wimax_dev)
{
	FUNC0(&wimax_dev->id_table_node);
	FUNC1(wimax_dev, __WIMAX_ST_NULL);
	FUNC2(&wimax_dev->mutex);
	FUNC2(&wimax_dev->mutex_reset);
}