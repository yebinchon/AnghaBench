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
struct dest {scalar_t__ tid_tx; struct dest* next; } ;
struct TYPE_2__ {struct dest** Head; } ;
typedef  scalar_t__ TID_TX ;

/* Variables and functions */
 TYPE_1__ DESTQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u16_t    FUNC4(zdev_t* dev, u16_t Qtype, u16_t ac, TID_TX tid_tx, void* vtxq) {
    struct dest* dest;
    u16_t   exist = 0;
    FUNC2(dev);

    FUNC0();

    FUNC1(dev);
    if (!DESTQ.Head[ac]) {
        exist = 0;
    }
    else {
        dest = DESTQ.Head[ac];
        if (dest->tid_tx == tid_tx) {
            exist = 1;
        }
        else {
            while (dest->next != DESTQ.Head[ac]) {
                dest = dest->next;
                if (dest->tid_tx == tid_tx){
                    exist = 1;
                    break;
                }
            }
        }
    }

    FUNC3(dev);

    return exist;
}