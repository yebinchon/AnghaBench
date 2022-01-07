
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfpFreqChangeCompleteCb ;
typedef int zdev_t ;
typedef void* u8_t ;
typedef int u16_t ;
struct TYPE_3__ {size_t freqReqQueueTail; int * freqChangeCompCb; void** freqReqExtOffset; void** freqReqBw40; int * freqReqQueue; } ;
struct TYPE_4__ {TYPE_1__ freqCtrl; } ;


 size_t ZM_MAX_FREQ_REQ_QUEUE ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

__attribute__((used)) static void zfAddFreqChangeReq(zdev_t* dev, u16_t frequency, u8_t bw40,
        u8_t extOffset, zfpFreqChangeCompleteCb cb)
{
    zmw_get_wlan_dev(dev);


    wd->freqCtrl.freqReqQueue[wd->freqCtrl.freqReqQueueTail] = frequency;
    wd->freqCtrl.freqReqBw40[wd->freqCtrl.freqReqQueueTail] = bw40;
    wd->freqCtrl.freqReqExtOffset[wd->freqCtrl.freqReqQueueTail] = extOffset;
    wd->freqCtrl.freqChangeCompCb[wd->freqCtrl.freqReqQueueTail] = cb;
    wd->freqCtrl.freqReqQueueTail++;
    if ( wd->freqCtrl.freqReqQueueTail >= ZM_MAX_FREQ_REQ_QUEUE )
    {
        wd->freqCtrl.freqReqQueueTail = 0;
    }
}
