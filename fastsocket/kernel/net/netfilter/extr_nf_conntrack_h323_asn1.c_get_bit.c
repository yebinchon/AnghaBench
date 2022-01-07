
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* cur; int bit; } ;
typedef TYPE_1__ bitstr_t ;


 int INC_BIT (TYPE_1__*) ;

__attribute__((used)) static unsigned int get_bit(bitstr_t *bs)
{
 unsigned int b = (*bs->cur) & (0x80 >> bs->bit);

 INC_BIT(bs);

 return b;
}
