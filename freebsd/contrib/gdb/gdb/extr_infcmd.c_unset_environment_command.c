
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_environ (int ) ;
 int inferior_environ ;
 int make_environ () ;
 scalar_t__ query (char*) ;
 int unset_in_environ (int ,char*) ;

__attribute__((used)) static void
unset_environment_command (char *var, int from_tty)
{
  if (var == 0)
    {


      if (!from_tty || query ("Delete all environment variables? "))
 {
   free_environ (inferior_environ);
   inferior_environ = make_environ ();
 }
    }
  else
    unset_in_environ (inferior_environ, var);
}
