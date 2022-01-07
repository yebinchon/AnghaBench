
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 scalar_t__ ZM_CENC ;
 scalar_t__ ZM_TKIP ;
 int ZM_USER_KEY_DEFAULT ;
 int zfHpSetKey (int *,int,int,scalar_t__,int*,int *) ;

u32_t zfHpSetApGroupKey(zdev_t* dev, u16_t* apMacAddr, u8_t type,
        u32_t* key, u32_t* micKey, u16_t vapId)
{
    zfHpSetKey(dev, ZM_USER_KEY_DEFAULT - 1 - vapId, 0, type, apMacAddr, key);
            if ((type == ZM_TKIP)



           )
        zfHpSetKey(dev, ZM_USER_KEY_DEFAULT - 1 - vapId, 1, type, apMacAddr, micKey);
    return 0;
}
