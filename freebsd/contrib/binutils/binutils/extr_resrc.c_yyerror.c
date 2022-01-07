
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,int ,int ,char const*) ;
 int rc_filename ;
 int rc_lineno ;

void
yyerror (const char *msg)
{
  fatal ("%s:%d: %s", rc_filename, rc_lineno, msg);
}
