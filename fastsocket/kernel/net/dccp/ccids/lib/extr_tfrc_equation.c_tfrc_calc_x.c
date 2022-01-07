
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef size_t u16 ;


 int BUG_ON (int) ;
 int DCCP_CRIT (char*) ;
 int DCCP_WARN (char*,int,int) ;
 int TFRC_CALC_X_ARRSIZE ;
 int TFRC_CALC_X_SPLIT ;
 int TFRC_SMALLEST_P ;
 int scaled_div (size_t,int) ;
 int scaled_div32 (int ,int) ;
 int** tfrc_calc_x_lookup ;

u32 tfrc_calc_x(u16 s, u32 R, u32 p)
{
 u16 index;
 u32 f;
 u64 result;


 BUG_ON(p > 1000000);
 BUG_ON(p == 0);
 if (R == 0) {
  DCCP_CRIT("WARNING: RTT is 0, returning maximum X_calc.");
  return ~0U;
 }

 if (p <= TFRC_CALC_X_SPLIT) {
  if (p < TFRC_SMALLEST_P) {
   DCCP_WARN("Value of p (%d) below resolution. "
      "Substituting %d\n", p, TFRC_SMALLEST_P);
   index = 0;
  } else
   index = p/TFRC_SMALLEST_P - 1;

  f = tfrc_calc_x_lookup[index][1];

 } else {
  index = p/(1000000/TFRC_CALC_X_ARRSIZE) - 1;

  f = tfrc_calc_x_lookup[index][0];
 }
 result = scaled_div(s, R);
 return scaled_div32(result, f);
}
