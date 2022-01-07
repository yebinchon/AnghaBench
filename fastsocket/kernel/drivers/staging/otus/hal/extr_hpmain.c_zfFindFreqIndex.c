
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8_t ;


 int DbgPrint (char*,...) ;

u8_t zfFindFreqIndex(u8_t f, u8_t* fArray, u8_t fArraySize)
{
    u8_t i;
    i=fArraySize-2;
    while(1)
    {
        if (f >= fArray[i])
        {
            return i;
        }
        if (i!=0)
        {
            i--;
        }
        else
        {
            return 0;
        }
    }
}
