
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int dump_function_to_file (int ,int ,int) ;
 int stderr ;

void
debug_function (tree fn, int flags)
{
  dump_function_to_file (fn, stderr, flags);
}
