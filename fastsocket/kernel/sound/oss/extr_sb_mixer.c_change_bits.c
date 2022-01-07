
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__*** iomap; } ;
typedef TYPE_2__ sb_devc ;
struct TYPE_4__ {int nbits; int bitoffs; } ;


 size_t LEFT_CHN ;

__attribute__((used)) static void change_bits(sb_devc * devc, unsigned char *regval, int dev, int chn, int newval)
{
 unsigned char mask;
 int shift;

 mask = (1 << (*devc->iomap)[dev][chn].nbits) - 1;
 newval = (int) ((newval * mask) + 50) / 100;

 shift = (*devc->iomap)[dev][chn].bitoffs - (*devc->iomap)[dev][LEFT_CHN].nbits + 1;

 *regval &= ~(mask << shift);
 *regval |= (newval & mask) << shift;
}
