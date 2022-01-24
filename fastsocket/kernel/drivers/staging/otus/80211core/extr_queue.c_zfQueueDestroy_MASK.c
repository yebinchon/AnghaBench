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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u16_t ;
struct zsQueueCell {int dummy; } ;
struct zsQueue {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct zsQueue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct zsQueue*,int) ; 

void FUNC2(zdev_t* dev, struct zsQueue* q)
{
    u16_t size = sizeof(struct zsQueue) + (sizeof(struct zsQueueCell)*(q->size-1));

    FUNC0(dev, q);
    FUNC1(dev, q, size);

    return;
}