
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int double_int ;


 int double_int_scmp (int ,int ) ;
 int double_int_ucmp (int ,int ) ;

int
double_int_cmp (double_int a, double_int b, bool uns)
{
  if (uns)
    return double_int_ucmp (a, b);
  else
    return double_int_scmp (a, b);
}
