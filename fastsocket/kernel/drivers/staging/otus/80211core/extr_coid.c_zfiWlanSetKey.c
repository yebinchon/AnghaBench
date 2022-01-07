
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsKeyInfo {int flag; int keyLength; size_t keyIndex; size_t vapId; int * key; int initIv; scalar_t__ macAddr; } ;
struct TYPE_12__ {size_t encryMode; } ;
struct TYPE_13__ {scalar_t__ iv32; scalar_t__ iv16; scalar_t__ tk; } ;
struct TYPE_11__ {int ibssWpa2Psk; int* bssid; size_t encryMode; int* txiv; int* rxiv; size_t cencKeyId; int keyId; scalar_t__ wpaState; int* rxivGK; size_t** wepKey; size_t* SWEncryMode; scalar_t__ iv32; scalar_t__ iv16; int * rxMicKey; TYPE_6__* rxSeed; TYPE_2__* oppositeInfo; int txMicKey; TYPE_6__ txSeed; } ;
struct TYPE_10__ {int** txiv; int* capab; size_t* encryMode; size_t* bcKeyIndex; size_t* bcHalKeyIdx; int * bcMicKey; scalar_t__* iv32; scalar_t__* iv16; TYPE_1__* staTable; } ;
struct TYPE_14__ {int TKIP_Group_KeyChanging; TYPE_5__ ws; TYPE_4__ sta; TYPE_3__ ap; scalar_t__ macAddr; } ;
struct TYPE_9__ {int camIdx; int pkInstalled; size_t encryMode; scalar_t__ wpaState; scalar_t__ iv32; scalar_t__ iv16; } ;
struct TYPE_8__ {size_t encryMode; int* txiv; int* rxiv; size_t cencKeyIdx; int keyIdx; int rxMicKey; int txMicKey; scalar_t__ iv32; scalar_t__ iv16; } ;


 size_t ZM_AES ;
 void* ZM_CENC ;
 int ZM_EVENT_SKIP_COUNTERMEASURE ;
 int ZM_KEY_FLAG_AUTHENTICATOR ;
 int ZM_KEY_FLAG_CENC ;
 int ZM_KEY_FLAG_DEFAULT_KEY ;
 int ZM_KEY_FLAG_GK ;
 int ZM_KEY_FLAG_INIT_IV ;
 int ZM_KEY_FLAG_PK ;
 size_t ZM_NO_WEP ;
 size_t ZM_STATUS_FAILURE ;
 size_t ZM_STATUS_SUCCESS ;
 void* ZM_STA_WPA_STATE_GK_OK ;
 scalar_t__ ZM_STA_WPA_STATE_INIT ;
 scalar_t__ ZM_STA_WPA_STATE_PK_OK ;
 size_t ZM_TKIP ;
 size_t ZM_USER_KEY_GK ;
 size_t ZM_USER_KEY_PK ;
 size_t ZM_WEP128 ;
 size_t ZM_WEP256 ;
 size_t ZM_WEP64 ;
 TYPE_7__* wd ;
 int zfApClearStaKey (int *,int*) ;
 int zfApFindSta (int *,scalar_t__) ;
 int zfHpSetApGroupKey (int *,scalar_t__,size_t,int *,int *,size_t) ;
 int zfHpSetApPairwiseKey (int *,int*,size_t,int *,int *,int) ;
 int zfHpSetDefaultKey (int *,size_t,size_t,int *,int *) ;
 int zfHpSetPerUserKey (int *,size_t,size_t,size_t*,size_t,int *,int *) ;
 int zfMemoryCopy (size_t*,int *,int) ;
 int zfMicSetKey (int *,int *) ;
 size_t zfStaFindOppositeByMACAddr (int *,int*,size_t*) ;
 int zfTimerCancel (int *,int ) ;
 int zfTimerSchedule (int *,int ,int) ;
 int zfTkipInit (int *,size_t*,TYPE_6__*,int ) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg2 (char*,int ) ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u8_t zfiWlanSetKey(zdev_t* dev, struct zsKeyInfo keyInfo)
{
    u16_t broadcast[3] = {0xffff, 0xffff, 0xffff};
    u32_t* key;
    u8_t encryMode = ZM_NO_WEP;



    u8_t micKey[16];
    u16_t id = 0;
    u8_t vapId, i, addr[6];
    u8_t userIdx=0;
    zmw_get_wlan_dev(dev);


    if ( keyInfo.flag & ZM_KEY_FLAG_AUTHENTICATOR )
    {

        if (keyInfo.flag & ZM_KEY_FLAG_PK)
        {

            if ((id = zfApFindSta(dev, keyInfo.macAddr)) == 0xffff)
            {

                return ZM_STATUS_FAILURE;
            }

            wd->ap.staTable[id].iv16 = 0;
            wd->ap.staTable[id].iv32 = 0;

            if (keyInfo.keyLength == 32)
            {
                {
                    wd->ap.staTable[id].encryMode = ZM_TKIP;

                    zfMemoryCopy(micKey, &keyInfo.key[16], 8);
                    zfMemoryCopy(&micKey[8], &keyInfo.key[24], 8);





                    zfMemoryCopy((u8_t *)&(wd->ap.staTable[id].txMicKey), &(keyInfo.key[16]), 8);
                    zfMemoryCopy((u8_t *)&(wd->ap.staTable[id].rxMicKey), &(keyInfo.key[24]), 8);

                }
            }
            else if (keyInfo.keyLength == 16)
            {
                wd->ap.staTable[id].encryMode = ZM_AES;
            }
            else if (keyInfo.keyLength == 0)
            {

                zfApClearStaKey(dev, (u16_t *)keyInfo.macAddr);

                return ZM_STATUS_SUCCESS;
            }
            else
            {
                return ZM_STATUS_FAILURE;
            }



            zfHpSetApPairwiseKey(dev, (u16_t *)keyInfo.macAddr,
                    wd->ap.staTable[id].encryMode, (u32_t*) keyInfo.key,
                    (u32_t*) &keyInfo.key[16], id+1);
            wd->ap.staTable[id].keyIdx = id + 1 + 4;
        }
        else if (keyInfo.flag & ZM_KEY_FLAG_GK)
        {
            vapId = keyInfo.vapId;

            wd->ap.iv16[vapId] = 0;
            wd->ap.iv32[vapId] = 0;

            if (keyInfo.keyLength == 32)
            {
                {
                    encryMode = ZM_TKIP;
                    key = (u32_t *)keyInfo.key;







                    zfMicSetKey(&(keyInfo.key[16]), &(wd->ap.bcMicKey[0]));
                    key = (u32_t*) keyInfo.key;
                }
            }
            else if (keyInfo.keyLength == 16)
            {
                encryMode = ZM_AES;
                key = (u32_t *)keyInfo.key;
                zm_debug_msg0("CWY - Set AES Group Key");
            }
            else if (keyInfo.keyLength == 0)
            {

                zfApClearStaKey(dev, broadcast);


                wd->ap.capab[vapId] &= 0xffef;

                return ZM_STATUS_SUCCESS;
            }
            else
            {
                if (keyInfo.keyLength == 5)
                {
                    encryMode = ZM_WEP64;
                }
                else if (keyInfo.keyLength == 13)
                {
                    encryMode = ZM_WEP128;
                }
                else if (keyInfo.keyLength == 29)
                {
                    encryMode = ZM_WEP256;
                }

                key = (u32_t*) keyInfo.key;
            }





            zfHpSetApGroupKey(dev, wd->macAddr, encryMode,
                    key, (u32_t*) &keyInfo.key[16], vapId);


            wd->ws.encryMode = encryMode;


            wd->ap.encryMode[vapId] = encryMode;


            wd->ap.bcKeyIndex[vapId] = keyInfo.keyIndex;
            wd->ap.bcHalKeyIdx[vapId] = vapId + 60;


            wd->ap.capab[vapId] |= 0x10;
        }
    }
    else
    {

        if ( keyInfo.flag & ZM_KEY_FLAG_PK )
        {
            wd->sta.iv16 = 0;
            wd->sta.iv32 = 0;

            wd->sta.oppositeInfo[userIdx].pkInstalled = 1;


            if ( keyInfo.keyLength == 32 )
            {
                zfTkipInit(keyInfo.key, (u8_t*) wd->macAddr,
                        &wd->sta.txSeed, keyInfo.initIv);
                zfTkipInit(keyInfo.key, (u8_t*) wd->sta.bssid,
                        &wd->sta.rxSeed[keyInfo.keyIndex], keyInfo.initIv);
                {
                    wd->sta.encryMode = ZM_TKIP;




                    zfMicSetKey(&keyInfo.key[16], &wd->sta.txMicKey);
                    zfMicSetKey(&keyInfo.key[24],
                                &wd->sta.rxMicKey[keyInfo.keyIndex]);
                }
            }
            else if ( keyInfo.keyLength == 16 )
            {
                wd->sta.encryMode = ZM_AES;

            }
            else
            {
                return ZM_STATUS_FAILURE;
            }
            for (i = 0; i < 3; i++)
            {
                addr[2 * i] = wd->sta.bssid[i] & 0xff;
                addr[2 * i + 1] = wd->sta.bssid[i] >> 8;
            }
            zfHpSetPerUserKey(dev,
                              ZM_USER_KEY_PK,
                              0,
                              addr,
                              wd->sta.encryMode,
                              (u32_t*) keyInfo.key, (u32_t*) &keyInfo.key[16]);

            wd->sta.keyId = 4;


            wd->sta.wpaState = ZM_STA_WPA_STATE_PK_OK;
        }
        else if ( keyInfo.flag & ZM_KEY_FLAG_GK )
        {

            zfTkipInit(keyInfo.key, (u8_t*) wd->sta.bssid,
                       &wd->sta.rxSeed[keyInfo.keyIndex], keyInfo.initIv);

            if ( keyInfo.keyLength == 32 )
            {
                {
                    encryMode = ZM_TKIP;
                    key = (u32_t*) wd->sta.rxSeed[keyInfo.keyIndex].tk;

                    if ( !(keyInfo.flag & ZM_KEY_FLAG_INIT_IV) )
                    {
                        wd->sta.rxSeed[keyInfo.keyIndex].iv16 = 0;
                        wd->sta.rxSeed[keyInfo.keyIndex].iv32 = 0;
                    }





                    zfMicSetKey(&keyInfo.key[24],
                                &wd->sta.rxMicKey[keyInfo.keyIndex]);
                }
            }
            else if ( keyInfo.keyLength == 16 )
            {
                encryMode = ZM_AES;

            }
            else
            {
                if ( keyInfo.keyLength == 5 )
                {
                    encryMode = ZM_WEP64;
                }
                else if ( keyInfo.keyLength == 13 )
                {
                    encryMode = ZM_WEP128;
                }
                else if ( keyInfo.keyLength == 29 )
                {
                    encryMode = ZM_WEP256;
                }

                key = (u32_t*) keyInfo.key;
            }
            zfHpSetPerUserKey(dev,
                              ZM_USER_KEY_GK,
                              0,
                              (u8_t *)broadcast,
                              encryMode,
                              (u32_t*) keyInfo.key, (u32_t*) &keyInfo.key[16]);

            wd->sta.wpaState = ZM_STA_WPA_STATE_GK_OK;

        }
        else
        {
            zm_debug_msg0("legacy WEP");

            if ( keyInfo.keyIndex >= 4 )
            {
                return ZM_STATUS_FAILURE;
            }

            if ( keyInfo.keyLength == 5 )
            {
                zm_debug_msg0("WEP 64");

                encryMode = ZM_WEP64;
            }
            else if ( keyInfo.keyLength == 13 )
            {
                zm_debug_msg0("WEP 128");

                encryMode = ZM_WEP128;
            }
            else if ( keyInfo.keyLength == 32 )
            {
                encryMode = ZM_TKIP;

                zfTkipInit(keyInfo.key, (u8_t*) wd->sta.bssid,
                           &wd->sta.rxSeed[keyInfo.keyIndex], keyInfo.initIv);
                zfMicSetKey(&keyInfo.key[24],
                           &wd->sta.rxMicKey[keyInfo.keyIndex]);
            }
            else if ( keyInfo.keyLength == 16 )
            {
                encryMode = ZM_AES;
            }
            else if ( keyInfo.keyLength == 29 )
            {
                zm_debug_msg0("WEP 256");

                encryMode = ZM_WEP256;


            }
            else
            {
                return ZM_STATUS_FAILURE;
            }

            {
                u8_t i;

                zm_debug_msg0("key = ");
                for(i = 0; i < keyInfo.keyLength; i++)
                {
                    zm_debug_msg2("", keyInfo.key[i]);
                }
            }

            if ( keyInfo.flag & ZM_KEY_FLAG_DEFAULT_KEY )
            {

                vapId = 0;
                wd->ap.bcHalKeyIdx[vapId] = keyInfo.keyIndex;
                wd->ap.bcKeyIndex[vapId] = keyInfo.keyIndex;
                wd->sta.keyId = keyInfo.keyIndex;
            }

   if(encryMode == ZM_TKIP)
   {
    if(wd->TKIP_Group_KeyChanging == 0x1)
    {
     zm_debug_msg0("Countermeasure : Cancel Old Timer ");
     zfTimerCancel(dev, ZM_EVENT_SKIP_COUNTERMEASURE);
    }
    else
    {
     zm_debug_msg0("Countermeasure : Create New Timer ");
    }

    wd->TKIP_Group_KeyChanging = 0x1;
    zfTimerSchedule(dev, ZM_EVENT_SKIP_COUNTERMEASURE, 150);
   }
            if ( encryMode == ZM_TKIP ||
                 encryMode == ZM_AES )
            {
                zfHpSetDefaultKey(dev, keyInfo.keyIndex, encryMode,
                                 (u32_t*) keyInfo.key, (u32_t*) &keyInfo.key[16]);
                if (wd->sta.wpaState == ZM_STA_WPA_STATE_PK_OK)
                    wd->sta.wpaState = ZM_STA_WPA_STATE_GK_OK;
                else if ( wd->sta.wpaState == ZM_STA_WPA_STATE_INIT )
                {
                    wd->sta.wpaState = ZM_STA_WPA_STATE_PK_OK;
                    wd->sta.encryMode = encryMode;
                    wd->ws.encryMode = encryMode;
                }

            }
            else
            {
                zfHpSetDefaultKey(dev, keyInfo.keyIndex, encryMode,
                               (u32_t*) keyInfo.key, ((void*)0));


                zfMemoryCopy(wd->sta.wepKey[keyInfo.keyIndex], keyInfo.key,
                        keyInfo.keyLength);


                wd->sta.SWEncryMode[keyInfo.keyIndex] = encryMode;

                wd->sta.encryMode = encryMode;
                wd->ws.encryMode = encryMode;
            }
        }
    }


    return ZM_STATUS_SUCCESS;
}
