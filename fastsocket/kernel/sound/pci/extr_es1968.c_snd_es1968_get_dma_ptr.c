
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esschan {scalar_t__* base; int * apu; } ;
struct es1968 {int dummy; } ;


 unsigned int apu_get_register (struct es1968*,int ,int) ;

__attribute__((used)) static inline unsigned int
snd_es1968_get_dma_ptr(struct es1968 *chip, struct esschan *es)
{
 unsigned int offset;

 offset = apu_get_register(chip, es->apu[0], 5);

 offset -= es->base[0];

 return (offset & 0xFFFE);
}
