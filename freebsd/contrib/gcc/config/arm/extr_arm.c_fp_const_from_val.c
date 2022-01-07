
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REAL_VALUE_TYPE ;


 scalar_t__ REAL_VALUES_EQUAL (int ,int ) ;
 int fp_consts_inited ;
 int gcc_unreachable () ;
 int init_fp_table () ;
 char const** strings_fp ;
 int * values_fp ;

__attribute__((used)) static const char *
fp_const_from_val (REAL_VALUE_TYPE *r)
{
  int i;

  if (!fp_consts_inited)
    init_fp_table ();

  for (i = 0; i < 8; i++)
    if (REAL_VALUES_EQUAL (*r, values_fp[i]))
      return strings_fp[i];

  gcc_unreachable ();
}
