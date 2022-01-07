
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_3__ {void* encryMode; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 void* ZM_NO_WEP ;
 int ZM_USER_KEY_DEFAULT ;
 int ZM_USER_KEY_GK ;
 int ZM_USER_KEY_PK ;
 TYPE_2__* wd ;
 int zfCoreSetKey (int *,int,int ,void*,int *,int *) ;
 int zfHpRemoveKey (int *,int ) ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanRemoveKey(zdev_t* dev, u8_t keyType, u8_t keyId)
{
    u16_t fakeMacAddr[3] = {0, 0, 0};
    u32_t fakeKey[4] = {0, 0, 0, 0};

    zmw_get_wlan_dev(dev);

    if ( keyType == 0 )
    {

        zm_debug_msg0("remove WEP key");
        zfCoreSetKey(dev, ZM_USER_KEY_DEFAULT+keyId, 0,
                 ZM_NO_WEP, fakeMacAddr, fakeKey);
        wd->sta.encryMode = ZM_NO_WEP;
    }
    else if ( keyType == 1 )
    {

        zm_debug_msg0("remove pairwise key");
        zfHpRemoveKey(dev, ZM_USER_KEY_PK);
        wd->sta.encryMode = ZM_NO_WEP;
    }
    else
    {

        zm_debug_msg0("remove group key");
        zfHpRemoveKey(dev, ZM_USER_KEY_GK);
    }
}
