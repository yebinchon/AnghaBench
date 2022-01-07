
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_info {char const* name; int value; char const* msg; } ;


 scalar_t__ malloc (int) ;
 int memset (char const**,int ,int) ;
 int num_signal_names ;
 char const** signal_names ;
 struct signal_info* signal_table ;
 int sys_nsig ;
 char const** sys_siglist ;

__attribute__((used)) static void
init_signal_tables (void)
{
  const struct signal_info *eip;
  int nbytes;




  if (num_signal_names == 0)
    {
      for (eip = signal_table; eip -> name != ((void*)0); eip++)
 {
   if (eip -> value >= num_signal_names)
     {
       num_signal_names = eip -> value + 1;
     }
 }
    }




  if (signal_names == ((void*)0))
    {
      nbytes = num_signal_names * sizeof (char *);
      if ((signal_names = (const char **) malloc (nbytes)) != ((void*)0))
 {
   memset (signal_names, 0, nbytes);
   for (eip = signal_table; eip -> name != ((void*)0); eip++)
     {
       signal_names[eip -> value] = eip -> name;
     }
 }
    }






  if (sys_siglist == ((void*)0))
    {
      nbytes = num_signal_names * sizeof (char *);
      if ((sys_siglist = (const char **) malloc (nbytes)) != ((void*)0))
 {
   memset (sys_siglist, 0, nbytes);
   sys_nsig = num_signal_names;
   for (eip = signal_table; eip -> name != ((void*)0); eip++)
     {
       sys_siglist[eip -> value] = eip -> msg;
     }
 }
    }



}
