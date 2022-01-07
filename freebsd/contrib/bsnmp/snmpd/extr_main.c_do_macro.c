
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int define_macro (char*,char*) ;
 int exit (int) ;
 char* strchr (char*,char) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
do_macro(char *arg)
{
 char *eq;
 int err;

 if ((eq = strchr(arg, '=')) == ((void*)0))
  err = define_macro(arg, "");
 else {
  *eq++ = '\0';
  err = define_macro(arg, eq);
 }
 if (err == -1) {
  syslog(LOG_ERR, "cannot save macro: %m");
  exit(1);
 }
}
