
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef scalar_t__ u16_t ;
struct zsTimerEntry {scalar_t__ event; struct zsTimerEntry* next; struct zsTimerEntry* pre; } ;
struct TYPE_3__ {scalar_t__ freeCount; struct zsTimerEntry* tail; struct zsTimerEntry* head; } ;
struct TYPE_4__ {TYPE_1__ timerList; } ;


 scalar_t__ ZM_MAX_TIMER_COUNT ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfTimerCancel(zdev_t* dev, u16_t event)
{
    struct zsTimerEntry *pEntry;
    u8_t i, count;

    zmw_get_wlan_dev(dev);




    pEntry = wd->timerList.head;
    count = ZM_MAX_TIMER_COUNT - wd->timerList.freeCount;

    for( i=0; i<count; i++ )
    {
        if ( pEntry->event == event )
        {
            if ( pEntry == wd->timerList.head )
            {
                wd->timerList.head = pEntry->next;
                wd->timerList.tail->next = pEntry;
                pEntry->pre = wd->timerList.tail;
                wd->timerList.tail = pEntry;
                pEntry = wd->timerList.head;
            }
            else
            {
                pEntry->pre->next = pEntry->next;
                pEntry->next->pre = pEntry->pre;
                wd->timerList.tail->next = pEntry;
                pEntry->pre = wd->timerList.tail;
                wd->timerList.tail = pEntry;
                pEntry = pEntry->next;
            }

            wd->timerList.freeCount++;
        }
        else
        {
            pEntry = pEntry->next;
        }
    }



    return 0;
}
