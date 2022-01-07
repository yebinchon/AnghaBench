
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offsetT ;


 int get_absolute_expression () ;

__attribute__((used)) static offsetT
cfi_parse_const (void)
{
  return get_absolute_expression ();
}
