
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fmtstr (char*,int,char*,int ,...) ;
 size_t lasttoken ;
 int synerror (char*) ;
 int * tokname ;

__attribute__((used)) static void
synexpect(int token)
{
 char msg[64];

 if (token >= 0) {
  fmtstr(msg, 64, "%s unexpected (expecting %s)",
   tokname[lasttoken], tokname[token]);
 } else {
  fmtstr(msg, 64, "%s unexpected", tokname[lasttoken]);
 }
 synerror(msg);
}
