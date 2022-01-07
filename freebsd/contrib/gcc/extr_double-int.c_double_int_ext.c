
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int double_int ;


 int double_int_sext (int ,unsigned int) ;
 int double_int_zext (int ,unsigned int) ;

double_int
double_int_ext (double_int cst, unsigned prec, bool uns)
{
  if (uns)
    return double_int_zext (cst, prec);
  else
    return double_int_sext (cst, prec);
}
