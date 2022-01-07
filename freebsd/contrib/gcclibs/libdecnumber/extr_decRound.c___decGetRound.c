
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rounding { ____Placeholder_rounding } rounding ;


 int __dfp_rounding_mode ;

enum rounding
__decGetRound (void)
{
  return __dfp_rounding_mode;
}
