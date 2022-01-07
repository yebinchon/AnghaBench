
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int zfMemoryCopy (int*,int*,int) ;

void zfDumpSSID(u8_t length, u8_t *value)
{
    u8_t buf[50];
    u8_t tmpLength = length;

    if ( tmpLength > 49 )
    {
        tmpLength = 49;
    }

    zfMemoryCopy(buf, value, tmpLength);
    buf[tmpLength] = '\0';


}
