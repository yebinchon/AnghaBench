
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 int current_language ;
 char* language_demangle (int ,char*,int) ;
 int printf_unfiltered (char*,...) ;
 int xfree (char*) ;

__attribute__((used)) static void
maintenance_demangle (char *args, int from_tty)
{
  char *demangled;

  if (args == ((void*)0) || *args == '\0')
    {
      printf_unfiltered ("\"maintenance demangle\" takes an argument to demangle.\n");
    }
  else
    {
      demangled = language_demangle (current_language, args,
         DMGL_ANSI | DMGL_PARAMS);
      if (demangled != ((void*)0))
 {
   printf_unfiltered ("%s\n", demangled);
   xfree (demangled);
 }
      else
 {
   printf_unfiltered ("Can't demangle \"%s\"\n", args);
 }
    }
}
