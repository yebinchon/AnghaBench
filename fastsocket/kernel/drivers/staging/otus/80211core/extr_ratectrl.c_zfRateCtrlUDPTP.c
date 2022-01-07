
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;



u32_t zfRateCtrlUDPTP(zdev_t* dev, u16_t Rate, u32_t PER) {
    if ((PER < 100) && (Rate > 0) && PER)
        return 1168000/(((12304/Rate)+197)*(100+100*PER/(100-PER)));
    else
        return 0;
}
