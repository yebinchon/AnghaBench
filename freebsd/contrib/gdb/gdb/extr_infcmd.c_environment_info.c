
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ_vector (int ) ;
 char* get_in_environ (int ,char*) ;
 int inferior_environ ;
 int puts_filtered (char*) ;

__attribute__((used)) static void
environment_info (char *var, int from_tty)
{
  if (var)
    {
      char *val = get_in_environ (inferior_environ, var);
      if (val)
 {
   puts_filtered (var);
   puts_filtered (" = ");
   puts_filtered (val);
   puts_filtered ("\n");
 }
      else
 {
   puts_filtered ("Environment variable \"");
   puts_filtered (var);
   puts_filtered ("\" not defined.\n");
 }
    }
  else
    {
      char **vector = environ_vector (inferior_environ);
      while (*vector)
 {
   puts_filtered (*vector++);
   puts_filtered ("\n");
 }
    }
}
