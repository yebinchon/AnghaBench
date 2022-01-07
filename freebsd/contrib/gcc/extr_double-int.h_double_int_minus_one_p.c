
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ low; int high; } ;
typedef TYPE_1__ double_int ;


 scalar_t__ ALL_ONES ;

__attribute__((used)) static inline bool
double_int_minus_one_p (double_int cst)
{
  return (cst.low == ALL_ONES && cst.high == -1);
}
