
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rubin_state {int q; int p; int pp; int bit_number; } ;


 int LOWER_BITS_RUBIN ;
 int UPPER_BIT_RUBIN ;
 int pushbit (int *,int,int ) ;

__attribute__((used)) static int encode(struct rubin_state *rs, long A, long B, int symbol)
{

 long i0, i1;
 int ret;

 while ((rs->q >= UPPER_BIT_RUBIN) ||
        ((rs->p + rs->q) <= UPPER_BIT_RUBIN)) {
  rs->bit_number++;

  ret = pushbit(&rs->pp, (rs->q & UPPER_BIT_RUBIN) ? 1 : 0, 0);
  if (ret)
   return ret;
  rs->q &= LOWER_BITS_RUBIN;
  rs->q <<= 1;
  rs->p <<= 1;
 }
 i0 = A * rs->p / (A + B);
 if (i0 <= 0)
  i0 = 1;

 if (i0 >= rs->p)
  i0 = rs->p - 1;

 i1 = rs->p - i0;

 if (symbol == 0)
  rs->p = i0;
 else {
  rs->p = i1;
  rs->q += i0;
 }
 return 0;
}
