
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int dump_thunk (int ,int ,int ) ;
 int stderr ;

void
debug_thunks (tree fn)
{
  dump_thunk (stderr, 0, fn);
}
