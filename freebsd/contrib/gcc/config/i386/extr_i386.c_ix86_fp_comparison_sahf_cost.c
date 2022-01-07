
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int TARGET_USE_SAHF ;
 int UNKNOWN ;
 int ix86_fp_comparison_codes (int,int*,int*,int*) ;
 int optimize_size ;

__attribute__((used)) static int
ix86_fp_comparison_sahf_cost (enum rtx_code code)
{
  enum rtx_code bypass_code, first_code, second_code;


  if (!TARGET_USE_SAHF && !optimize_size)
    return 1024;
  ix86_fp_comparison_codes (code, &bypass_code, &first_code, &second_code);
  return (bypass_code != UNKNOWN || second_code != UNKNOWN) + 3;
}
