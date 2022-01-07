
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int flag_exceptions ;

int
doing_eh (int do_warn)
{
  if (! flag_exceptions)
    {
      static int warned = 0;
      if (! warned && do_warn)
 {
   error ("exception handling disabled, use -fexceptions to enable");
   warned = 1;
 }
      return 0;
    }
  return 1;
}
