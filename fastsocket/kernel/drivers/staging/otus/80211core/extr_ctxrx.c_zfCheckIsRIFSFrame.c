
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_3__ {int* rifsLikeFrameSequence; size_t rifsLikeFrameCnt; scalar_t__ rifsState; int currentFrequency; scalar_t__ rifsTimer; int rifsCount; int HT2040; int EnableHT; } ;
struct TYPE_4__ {scalar_t__ tick; TYPE_1__ sta; } ;


 int ZM_BIT_5 ;
 scalar_t__ ZM_RIFS_STATE_DETECTED ;
 scalar_t__ ZM_RIFS_STATE_DETECTING ;
 scalar_t__ ZM_RIFS_TIMER_TIMEOUT ;
 TYPE_2__* wd ;
 int zfHpDisableRifs (int *) ;
 int zfHpEnableRifs (int *,int,int ,int ) ;
 int zmw_buf_readh (int *,int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfCheckIsRIFSFrame(zdev_t* dev, zbuf_t* buf, u16_t frameSubtype)
{
    zmw_get_wlan_dev(dev);


    if (frameSubtype & 0x80)
    {
        u16_t sequenceNum;
        u16_t qosControlField;

        sequenceNum = ( zmw_buf_readh(dev, buf, 22) >> 4 );
        qosControlField = zmw_buf_readh(dev, buf, 24);



        if( qosControlField & ZM_BIT_5 )
        {

            wd->sta.rifsLikeFrameSequence[wd->sta.rifsLikeFrameCnt] = sequenceNum;

            if( wd->sta.rifsState == ZM_RIFS_STATE_DETECTING )
            {
                if( wd->sta.rifsLikeFrameSequence[2] != 0 )
                {
                    if( ( wd->sta.rifsLikeFrameSequence[2] - wd->sta.rifsLikeFrameSequence[1] == 2 ) &&
                        ( wd->sta.rifsLikeFrameSequence[1] - wd->sta.rifsLikeFrameSequence[0] == 2 ) )
                    {



                        zfHpEnableRifs(dev, ((wd->sta.currentFrequency<3000)?1:0), wd->sta.EnableHT, wd->sta.HT2040);


                        wd->sta.rifsTimer = wd->tick;

                        wd->sta.rifsCount++;


                        wd->sta.rifsState = ZM_RIFS_STATE_DETECTED;
                    }
                }
            }
            else
            {

                if( (wd->tick - wd->sta.rifsTimer) < ZM_RIFS_TIMER_TIMEOUT )
                    wd->sta.rifsTimer = wd->tick;
            }






            if( wd->sta.rifsLikeFrameSequence[2] != 0 )
            {
                wd->sta.rifsLikeFrameSequence[0] = wd->sta.rifsLikeFrameSequence[1];
                wd->sta.rifsLikeFrameSequence[1] = wd->sta.rifsLikeFrameSequence[2];
                wd->sta.rifsLikeFrameSequence[2] = 0;
            }


            if( wd->sta.rifsLikeFrameCnt < 2 )
                wd->sta.rifsLikeFrameCnt++;
        }
    }


    if( wd->sta.rifsState == ZM_RIFS_STATE_DETECTED )
    {
        if( ( wd->tick - wd->sta.rifsTimer ) > ZM_RIFS_TIMER_TIMEOUT )
        {

            zfHpDisableRifs(dev);


            wd->sta.rifsLikeFrameSequence[0] = 0;
            wd->sta.rifsLikeFrameSequence[1] = 0;
            wd->sta.rifsLikeFrameSequence[2] = 0;
            wd->sta.rifsLikeFrameCnt = 0;


            wd->sta.rifsState = ZM_RIFS_STATE_DETECTING;
        }
    }
}
