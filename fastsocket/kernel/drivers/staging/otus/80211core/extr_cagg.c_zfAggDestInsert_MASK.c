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
typedef  scalar_t__ u16_t ;
struct dest {struct dest* next; void* vtxq; void* tid_tx; scalar_t__ Qtype; } ;
struct TYPE_2__ {struct dest** dest; struct dest** Head; } ;
typedef  void* TID_TX ;

/* Variables and functions */
 TYPE_1__ DESTQ ; 
 struct dest* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void    FUNC5(zdev_t* dev, u16_t Qtype, u16_t ac, TID_TX tid_tx, void* vtxq)
{
    struct dest* new_dest;
    FUNC3(dev);

    FUNC1();

    new_dest = FUNC0(dev, sizeof(struct dest));
    if(!new_dest)
    {
        return;
    }
    new_dest->Qtype = Qtype;
    new_dest->tid_tx = tid_tx;
    if (0 == Qtype)
        new_dest->tid_tx = tid_tx;
    else
        new_dest->vtxq = vtxq;
    if (!DESTQ.Head[ac]) {

        FUNC2(dev);
        new_dest->next = new_dest;
        DESTQ.Head[ac] = DESTQ.dest[ac] = new_dest;
        FUNC4(dev);
    }
    else {

        FUNC2(dev);
        new_dest->next = DESTQ.dest[ac]->next;
        DESTQ.dest[ac]->next = new_dest;
        FUNC4(dev);
    }


    //DESTQ.size[ac]++;
    return;
}