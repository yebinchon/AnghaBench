
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 int value_logical_not (struct value*) ;

int
value_true (struct value *val)
{






  return !value_logical_not (val);
}
