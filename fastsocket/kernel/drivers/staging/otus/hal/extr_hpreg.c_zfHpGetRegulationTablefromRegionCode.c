
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef char u8_t ;
typedef int u16_t ;


 int zfCoreSetIsoName (int *,char*) ;
 int zfHpGetRegulationTable (int *,int,int,int) ;

void zfHpGetRegulationTablefromRegionCode(zdev_t* dev, u16_t regionCode)
{
    u16_t c_lo = 2000, c_hi = 6000;
    u8_t isoName[3] = {'N', 'A', 0};

    zfCoreSetIsoName(dev, isoName);

    zfHpGetRegulationTable(dev, regionCode, c_lo, c_hi);
}
