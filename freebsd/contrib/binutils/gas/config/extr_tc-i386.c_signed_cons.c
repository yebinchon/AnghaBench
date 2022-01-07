
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CODE_64BIT ;
 int cons (int) ;
 int cons_sign ;
 scalar_t__ flag_code ;

__attribute__((used)) static void signed_cons (int size)
{
  if (flag_code == CODE_64BIT)
    cons_sign = 1;
  cons (size);
  cons_sign = -1;
}
