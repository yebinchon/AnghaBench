
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rate; int mclk; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* coeff_div ;

__attribute__((used)) static inline int get_coeff(int mclk, int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(coeff_div); i++) {
  if (coeff_div[i].rate == rate && coeff_div[i].mclk == mclk)
   return i;
 }
 return 0;
}
