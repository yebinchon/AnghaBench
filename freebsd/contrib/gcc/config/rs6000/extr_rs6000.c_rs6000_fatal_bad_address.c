
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int fatal_insn (char*,int ) ;

void
rs6000_fatal_bad_address (rtx op)
{
  fatal_insn ("bad address", op);
}
