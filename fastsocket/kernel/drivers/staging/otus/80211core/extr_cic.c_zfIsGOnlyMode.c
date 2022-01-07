
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;


 int* zg11gRateTbl ;

u8_t zfIsGOnlyMode(zdev_t* dev, u16_t frequency, u8_t* rateArray)
{
    u8_t length = rateArray[1];
    u8_t i, j;

    if (frequency < 3000) {
        for (i = 2; i < length+2; i++) {
            for (j = 0; j < 8; j++) {
                if ( ((rateArray[i] & 0x7f) == zg11gRateTbl[j])
                     && (rateArray[i] & 0x80) ) {
                    return 1;
                }
            }
        }
    }

    return 0;
}
