
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct zsTimerEntry {scalar_t__ timer; struct zsTimerEntry* pre; struct zsTimerEntry* next; int event; } ;
struct TYPE_3__ {int freeCount; struct zsTimerEntry* tail; struct zsTimerEntry* head; } ;
struct TYPE_4__ {scalar_t__ tick; TYPE_1__ timerList; int bTimerReady; } ;


 int ZM_MAX_TIMER_COUNT ;
 TYPE_2__* wd ;
 int zfProcessEvent (int *,int *,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfTimerCheckAndHandle(zdev_t* dev)
{
    struct zsTimerEntry *pEntry;
    struct zsTimerEntry *pTheLastEntry = ((void*)0);
    u16_t event[ZM_MAX_TIMER_COUNT];
    u8_t i, j=0, count;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if ( !wd->bTimerReady )
    {
        return 0;
    }

    zmw_enter_critical_section(dev);

    pEntry = wd->timerList.head;
    count = ZM_MAX_TIMER_COUNT - wd->timerList.freeCount;

    for( i=0; i<count; i++ )
    {

        if ( ( pEntry->timer > wd->tick )&&
             ((pEntry->timer - wd->tick) < 1000000000) )
        {
            break;
        }

        event[j++] = pEntry->event;
        pTheLastEntry = pEntry;
        pEntry = pEntry->next;
    }

    if ( j > 0 )
    {
        wd->timerList.tail->next = wd->timerList.head;
        wd->timerList.head->pre = wd->timerList.tail;
        wd->timerList.head = pEntry;
        wd->timerList.tail = pTheLastEntry;
        wd->timerList.freeCount += j;

    }

    zmw_leave_critical_section(dev);

    zfProcessEvent(dev, event, j);

    return 0;
}
