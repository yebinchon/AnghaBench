
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dont_repeat () ;
 char* get_in_environ (int ,int ) ;
 int inferior_environ ;
 int mod_path (char*,char**) ;
 int path_info (char*,int) ;
 int path_var_name ;
 int set_in_environ (int ,int ,char*) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
path_command (char *dirname, int from_tty)
{
  char *exec_path;
  char *env;
  dont_repeat ();
  env = get_in_environ (inferior_environ, path_var_name);

  if (!env)
    env = "";
  exec_path = xstrdup (env);
  mod_path (dirname, &exec_path);
  set_in_environ (inferior_environ, path_var_name, exec_path);
  xfree (exec_path);
  if (from_tty)
    path_info ((char *) ((void*)0), from_tty);
}
