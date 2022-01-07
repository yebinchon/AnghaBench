
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ stinst_type ;
typedef int dict_type ;


 int exec (int *) ;
 scalar_t__* pc ;

__attribute__((used)) static void
call ()
{
  stinst_type *oldpc = pc;
  dict_type *e;
  e = (dict_type *) (pc[1]);
  exec (e);
  pc = oldpc + 2;
}
