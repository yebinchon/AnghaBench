
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



bool
MgntIsCckRate(
        u16 rate
        )
{
        bool bReturn = 0;

        if((rate <= 22) && (rate != 12) && (rate != 18))
        {
                bReturn = 1;
        }

        return bReturn;
}
