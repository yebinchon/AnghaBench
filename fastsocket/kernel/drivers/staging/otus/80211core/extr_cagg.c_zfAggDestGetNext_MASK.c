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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  size_t u16_t ;
struct dest {struct dest* next; } ;
struct TYPE_2__ {struct dest** dest; } ;

/* Variables and functions */
 TYPE_1__ DESTQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct dest* FUNC4(zdev_t* dev, u16_t ac)
{
    struct dest *dest = NULL;
    FUNC2(dev);

    FUNC0();

    FUNC1(dev);
    if (DESTQ.dest[ac]) {
        dest = DESTQ.dest[ac];
        DESTQ.dest[ac] = DESTQ.dest[ac]->next;
    }
    else {
        dest = NULL;
    }
    FUNC3(dev);

    return dest;
}