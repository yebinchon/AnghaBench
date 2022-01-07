
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lithium_t ;
struct TYPE_3__ {int nbits; int lo_bit; int reg; } ;
typedef TYPE_1__ ad1843_bitfield_t ;


 int DBGXV (char*,int *,int ,int,int,int,int) ;
 int li_read_ad1843_reg (int *,int ) ;
 int li_write_ad1843_reg (int *,int ,int) ;

__attribute__((used)) static int ad1843_write_bits(lithium_t *lith,
        const ad1843_bitfield_t *field,
        int newval)
{
 int w = li_read_ad1843_reg(lith, field->reg);
 int mask = ((1 << field->nbits) - 1) << field->lo_bit;
 int oldval = (w & mask) >> field->lo_bit;
 int newbits = (newval << field->lo_bit) & mask;
 w = (w & ~mask) | newbits;
 (void) li_write_ad1843_reg(lith, field->reg, w);

 DBGXV("ad1843_write_bits(lith=0x%p, field->{%d %d %d}, val=0x%x) "
       "returns 0x%x\n",
       lith, field->reg, field->lo_bit, field->nbits, newval,
       oldval);

 return oldval;
}
