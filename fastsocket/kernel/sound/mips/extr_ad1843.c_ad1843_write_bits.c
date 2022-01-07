
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1843 {int (* read ) (int ,int ) ;int chip; int (* write ) (int ,int ,int) ;} ;
struct ad1843_bitfield {int nbits; int lo_bit; int reg; } ;


 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int) ;

__attribute__((used)) static int ad1843_write_bits(struct snd_ad1843 *ad1843,
        const struct ad1843_bitfield *field,
        int newval)
{
 int w, mask, oldval, newbits;

 w = ad1843->read(ad1843->chip, field->reg);
 mask = ((1 << field->nbits) - 1) << field->lo_bit;
 oldval = (w & mask) >> field->lo_bit;
 newbits = (newval << field->lo_bit) & mask;
 w = (w & ~mask) | newbits;
 ad1843->write(ad1843->chip, field->reg, w);

 return oldval;
}
