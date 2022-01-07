
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int make_numeric_value (int ) ;
 int max_attr_value (int ,int*) ;

__attribute__((used)) static rtx
max_fn (rtx exp)
{
  int unknown;
  return make_numeric_value (max_attr_value (exp, &unknown));
}
