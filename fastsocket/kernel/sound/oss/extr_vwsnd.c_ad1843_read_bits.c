
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lithium_t ;
struct TYPE_3__ {int lo_bit; int nbits; int reg; } ;
typedef TYPE_1__ ad1843_bitfield_t ;


 int DBGXV (char*,int *,int ,int,int,int) ;
 int li_read_ad1843_reg (int *,int ) ;

__attribute__((used)) static int ad1843_read_bits(lithium_t *lith, const ad1843_bitfield_t *field)
{
 int w = li_read_ad1843_reg(lith, field->reg);
 int val = w >> field->lo_bit & ((1 << field->nbits) - 1);

 DBGXV("ad1843_read_bits(lith=0x%p, field->{%d %d %d}) returns 0x%x\n",
       lith, field->reg, field->lo_bit, field->nbits, val);

 return val;
}
