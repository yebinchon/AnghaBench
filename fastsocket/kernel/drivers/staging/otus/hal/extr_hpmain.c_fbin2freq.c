
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;


 int AR5416_BCHAN_UNUSED ;

u32_t
fbin2freq(u8_t fbin, u8_t is2GHz)
{




    if (fbin == AR5416_BCHAN_UNUSED) {
        return fbin;
    }

    return (u32_t)((is2GHz==1) ? (2300 + fbin) : (4800 + 5 * fbin));
}
