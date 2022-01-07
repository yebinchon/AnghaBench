
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1843 {int (* read ) (int ,int ) ;int chip; } ;
struct ad1843_bitfield {int lo_bit; int nbits; int reg; } ;


 int stub1 (int ,int ) ;

__attribute__((used)) static int ad1843_read_bits(struct snd_ad1843 *ad1843,
       const struct ad1843_bitfield *field)
{
 int w;

 w = ad1843->read(ad1843->chip, field->reg);
 return w >> field->lo_bit & ((1 << field->nbits) - 1);
}
