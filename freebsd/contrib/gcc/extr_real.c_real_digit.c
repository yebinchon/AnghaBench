
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cl; } ;
typedef TYPE_1__ const REAL_VALUE_TYPE ;


 int VOIDmode ;
 int gcc_assert (int) ;
 int real_from_integer (TYPE_1__ const*,int ,int,int ,int) ;
 scalar_t__ rvc_zero ;

__attribute__((used)) static const REAL_VALUE_TYPE *
real_digit (int n)
{
  static REAL_VALUE_TYPE num[10];

  gcc_assert (n >= 0);
  gcc_assert (n <= 9);

  if (n > 0 && num[n].cl == rvc_zero)
    real_from_integer (&num[n], VOIDmode, n, 0, 1);

  return &num[n];
}
