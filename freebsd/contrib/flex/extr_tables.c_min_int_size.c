
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_data {int dummy; } ;
typedef scalar_t__ flex_uint32_t ;
typedef int flex_int8_t ;
typedef scalar_t__ flex_int32_t ;
typedef int flex_int16_t ;


 scalar_t__ INT16_MAX ;
 scalar_t__ INT8_MAX ;
 scalar_t__ abs (int ) ;
 scalar_t__ yytbl_calc_total_len (struct yytbl_data*) ;
 int yytbl_data_geti (struct yytbl_data*,scalar_t__) ;

__attribute__((used)) static size_t min_int_size (struct yytbl_data *tbl)
{
 flex_uint32_t i, total_len;
 flex_int32_t max = 0;

 total_len = yytbl_calc_total_len (tbl);

 for (i = 0; i < total_len; i++) {
  flex_int32_t n;

  n = abs (yytbl_data_geti (tbl, i));

  if (n > max)
   max = n;
 }

 if (max <= INT8_MAX)
  return sizeof (flex_int8_t);
 else if (max <= INT16_MAX)
  return sizeof (flex_int16_t);
 else
  return sizeof (flex_int32_t);
}
