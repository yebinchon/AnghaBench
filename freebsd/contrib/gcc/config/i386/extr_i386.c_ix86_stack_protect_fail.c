
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TARGET_64BIT ;
 int default_external_stack_protect_fail () ;
 int default_hidden_stack_protect_fail () ;

__attribute__((used)) static tree
ix86_stack_protect_fail (void)
{
  return TARGET_64BIT
  ? default_external_stack_protect_fail ()
  : default_hidden_stack_protect_fail ();
}
