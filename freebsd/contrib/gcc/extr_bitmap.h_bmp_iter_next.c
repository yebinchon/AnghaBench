
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; } ;
typedef TYPE_1__ bitmap_iterator ;



__attribute__((used)) static inline void
bmp_iter_next (bitmap_iterator *bi, unsigned *bit_no)
{
  bi->bits >>= 1;
  *bit_no += 1;
}
