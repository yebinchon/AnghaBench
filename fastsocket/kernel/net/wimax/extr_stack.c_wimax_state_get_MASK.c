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
struct wimax_dev {int state; int /*<<< orphan*/  mutex; } ;
typedef  enum wimax_st { ____Placeholder_wimax_st } wimax_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

enum wimax_st FUNC2(struct wimax_dev *wimax_dev)
{
	enum wimax_st state;
	FUNC0(&wimax_dev->mutex);
	state = wimax_dev->state;
	FUNC1(&wimax_dev->mutex);
	return state;
}