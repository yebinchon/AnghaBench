
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rubin_state {long p; long bit_number; int bit_divider; int* bits; scalar_t__ q; } ;


 int UPPER_BIT_RUBIN ;

__attribute__((used)) static void init_rubin(struct rubin_state *rs, int div, int *bits)
{
 int c;

 rs->q = 0;
 rs->p = (long) (2 * UPPER_BIT_RUBIN);
 rs->bit_number = (long) 0;
 rs->bit_divider = div;

 for (c=0; c<8; c++)
  rs->bits[c] = bits[c];
}
