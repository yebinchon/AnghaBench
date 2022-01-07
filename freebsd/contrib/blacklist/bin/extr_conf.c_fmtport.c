
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int FSTAR ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static void
fmtport(char *b, size_t l, int port)
{
 char buf[128];

 if (port == FSTAR)
  return;

 if (b[0] == '\0' || strcmp(b, "*") == 0)
  snprintf(b, l, "%d", port);
 else {
  snprintf(buf, sizeof(buf), ":%d", port);
  strlcat(b, buf, l);
 }
}
