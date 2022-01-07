
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int double_int ;


 int double_int_divmod (int ,int ,int,unsigned int,int *) ;

double_int
double_int_mod (double_int a, double_int b, bool uns, unsigned code)
{
  double_int mod;

  double_int_divmod (a, b, uns, code, &mod);
  return mod;
}
