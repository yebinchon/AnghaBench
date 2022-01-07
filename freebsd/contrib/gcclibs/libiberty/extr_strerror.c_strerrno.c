
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; char* name; } ;


 char** error_names ;
 TYPE_1__ evmserr ;
 int init_error_tables () ;
 int num_error_names ;
 int sprintf (char*,char*,int) ;

const char *
strerrno (int errnoval)
{
  const char *name;
  static char buf[32];

  if (error_names == ((void*)0))
    {
      init_error_tables ();
    }

  if ((errnoval < 0) || (errnoval >= num_error_names))
    {






      name = ((void*)0);
    }
  else if ((error_names == ((void*)0)) || (error_names[errnoval] == ((void*)0)))
    {

      sprintf (buf, "Error %d", errnoval);
      name = (const char *) buf;
    }
  else
    {

      name = error_names[errnoval];
    }

  return (name);
}
