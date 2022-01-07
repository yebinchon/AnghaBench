
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;


 int ZM_MAX_SUPP_RATES_IE_SIZE ;
 int ZM_WLAN_EID_SUPPORT_RATE ;
 int zfMemoryCopy (int*,int*,int) ;
 int* zg11bRateTbl ;

void zfGatherBMode(zdev_t* dev, u8_t* rateArray, u8_t* extrateArray)
{
    u8_t gatherBMode[ZM_MAX_SUPP_RATES_IE_SIZE + 2];
    u8_t i, j, k = 0;
    u8_t length;

    gatherBMode[0] = ZM_WLAN_EID_SUPPORT_RATE;
    gatherBMode[1] = 0;

    length = rateArray[1];
    for (i = 2; i < length+2; i++) {
        for (j = 0; j < 4; j++) {
            if ( (rateArray[i] & 0x7f) == zg11bRateTbl[j] ) {
                gatherBMode[2+k] = rateArray[i];

                gatherBMode[1]++;
                k++;
            }
        }
    }

    length = extrateArray[1];
    for (i = 2; i < length+2; i++) {
        for (j = 0; j < 4; j++) {
            if ( (extrateArray[i] & 0x7f) == zg11bRateTbl[j] ) {
                gatherBMode[2+k] = extrateArray[i];

                gatherBMode[1]++;
                k++;
            }
        }
    }

    extrateArray[0] = extrateArray[1] = 0;
    zfMemoryCopy(rateArray, gatherBMode, gatherBMode[1]+2);
}
