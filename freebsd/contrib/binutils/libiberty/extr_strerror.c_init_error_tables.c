
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_info {char const* name; int value; char const* msg; } ;


 char const** error_names ;
 struct error_info* error_table ;
 scalar_t__ malloc (int) ;
 int memset (char const**,int ,int) ;
 int num_error_names ;
 char const** sys_errlist ;
 int sys_nerr ;

__attribute__((used)) static void
init_error_tables (void)
{
  const struct error_info *eip;
  int nbytes;




  if (num_error_names == 0)
    {
      for (eip = error_table; eip -> name != ((void*)0); eip++)
 {
   if (eip -> value >= num_error_names)
     {
       num_error_names = eip -> value + 1;
     }
 }
    }




  if (error_names == ((void*)0))
    {
      nbytes = num_error_names * sizeof (char *);
      if ((error_names = (const char **) malloc (nbytes)) != ((void*)0))
 {
   memset (error_names, 0, nbytes);
   for (eip = error_table; eip -> name != ((void*)0); eip++)
     {
       error_names[eip -> value] = eip -> name;
     }
 }
    }






  if (sys_errlist == ((void*)0))
    {
      nbytes = num_error_names * sizeof (char *);
      if ((sys_errlist = (const char **) malloc (nbytes)) != ((void*)0))
 {
   memset (sys_errlist, 0, nbytes);
   sys_nerr = num_error_names;
   for (eip = error_table; eip -> name != ((void*)0); eip++)
     {
       sys_errlist[eip -> value] = eip -> msg;
     }
 }
    }



}
