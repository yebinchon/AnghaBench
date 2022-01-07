
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int double_int ;


 int double_int_div (int ,int ,int,unsigned int) ;

double_int
double_int_udiv (double_int a, double_int b, unsigned code)
{
  return double_int_div (a, b, 1, code);
}
