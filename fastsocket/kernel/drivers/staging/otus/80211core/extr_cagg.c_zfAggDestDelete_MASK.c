#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u16_t ;
struct dest {void* vtxq; struct dest* next; TYPE_1__* tid_tx; } ;
struct TYPE_7__ {int /*<<< orphan*/ ** dest; struct dest** Head; } ;
struct TYPE_6__ {scalar_t__ destLock; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  aggTail; int /*<<< orphan*/  aggHead; } ;
typedef  TYPE_1__* TID_TX ;

/* Variables and functions */
 TYPE_4__ DESTQ ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dest*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void    FUNC6(zdev_t* dev, u16_t Qtype, TID_TX tid_tx, void* vtxq)
{
    struct dest* dest, *temp;
    u16_t   i;

    FUNC4(dev);

    FUNC2();

    FUNC3(dev);
    if (wd->destLock) {
        FUNC5(dev);
        return;
    }


    //zmw_declare_for_critical_section();
    for (i=0; i<4; i++) {
        if (!DESTQ.Head[i]) continue;
        dest = DESTQ.Head[i];
        if (!dest) continue;


        while (dest && (dest->next != DESTQ.Head[i])) {
            if (Qtype == 0 && dest->next->tid_tx == tid_tx){
                break;
            }
            if (Qtype == 1 && dest->next->vtxq == vtxq) {
                break;
            }
            dest = dest->next;
        }

        if ((Qtype == 0 && dest->next->tid_tx == tid_tx) || (Qtype == 1 && dest->next->vtxq == vtxq)) {

            tid_tx->size = FUNC1(dev, tid_tx->aggHead, tid_tx->aggTail);
            if (tid_tx->size) {
                FUNC5(dev);
                return;
            }
            if (!DESTQ.Head[i]) {
                temp = NULL;
            }
            else {
                temp = dest->next;
                if (temp == dest) {
                    DESTQ.Head[i] = DESTQ.dest[i] = NULL;
                    //DESTQ.size[i] = 0;
                }
                else {
                    dest->next = dest->next->next;
                }
            }

            if (temp == NULL)
                {/* do nothing */} //zfwMemFree(dev, temp, sizeof(struct dest));
            else
                FUNC0(dev, temp, sizeof(struct dest));

            /*zmw_enter_critical_section(dev);
            if (DESTQ.size[i] > 0)
                DESTQ.size[i]--;
            zmw_leave_critical_section(dev);
            */
        }

    }
    FUNC5(dev);
    return;
}