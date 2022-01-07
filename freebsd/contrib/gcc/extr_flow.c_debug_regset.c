
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regset ;


 int dump_regset (int ,int ) ;
 int putc (char,int ) ;
 int stderr ;

void
debug_regset (regset r)
{
  dump_regset (r, stderr);
  putc ('\n', stderr);
}
