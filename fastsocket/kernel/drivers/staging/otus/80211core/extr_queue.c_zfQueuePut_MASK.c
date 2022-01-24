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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int /*<<< orphan*/  u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsQueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct zsQueue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u16_t FUNC4(zdev_t* dev, struct zsQueue* q, zbuf_t* buf, u32_t tick)
{
    u16_t ret;
    FUNC1();

    FUNC2(dev);

    ret = FUNC0(dev, q, buf, tick);

    FUNC3(dev);

    return ret;
}