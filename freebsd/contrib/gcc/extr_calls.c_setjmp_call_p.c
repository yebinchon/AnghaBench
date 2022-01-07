
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ECF_RETURNS_TWICE ;
 int special_function_p (int ,int ) ;

int
setjmp_call_p (tree fndecl)
{
  return special_function_p (fndecl, 0) & ECF_RETURNS_TWICE;
}
