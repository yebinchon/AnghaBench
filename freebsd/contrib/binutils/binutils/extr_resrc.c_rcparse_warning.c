
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int fprintf (int ,char*,char*,int,char const*) ;
 char* rc_filename ;
 int rc_lineno ;
 int stderr ;

void
rcparse_warning (const char *msg)
{
  fprintf (stderr, _("%s:%d: %s\n"), rc_filename, rc_lineno, msg);
}
