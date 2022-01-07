
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; char* msg; } ;


 int * error_names ;
 TYPE_1__ evmserr ;
 int init_error_tables () ;
 int sprintf (char*,char*,int) ;
 int ** sys_errlist ;
 int sys_nerr ;

char *
strerror (int errnoval)
{
  const char *msg;
  static char buf[32];



  if (error_names == ((void*)0))
    {
      init_error_tables ();
    }



  if ((errnoval < 0) || (errnoval >= sys_nerr))
    {






      msg = ((void*)0);
    }
  else if ((sys_errlist == ((void*)0)) || (sys_errlist[errnoval] == ((void*)0)))
    {

      sprintf (buf, "Error %d", errnoval);
      msg = buf;
    }
  else
    {

      msg = (char *) sys_errlist[errnoval];
    }

  return (msg);
}
