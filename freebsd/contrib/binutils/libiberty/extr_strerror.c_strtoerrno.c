
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int * name; } ;


 int ** error_names ;
 TYPE_1__ evmserr ;
 int init_error_tables () ;
 int num_error_names ;
 scalar_t__ strcmp (char const*,int *) ;

int
strtoerrno (const char *name)
{
  int errnoval = 0;

  if (name != ((void*)0))
    {
      if (error_names == ((void*)0))
 {
   init_error_tables ();
 }
      for (errnoval = 0; errnoval < num_error_names; errnoval++)
 {
   if ((error_names[errnoval] != ((void*)0)) &&
       (strcmp (name, error_names[errnoval]) == 0))
     {
       break;
     }
 }
      if (errnoval == num_error_names)
 {





   errnoval = 0;
 }
    }
  return (errnoval);
}
