
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_client {char* cport; } ;


 int free (char*) ;
 char* malloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

int
snmp_client_set_port(struct snmp_client *cl, const char *p)
{
 char *np;

 if (p == ((void*)0)) {
  if (cl->cport != ((void*)0))
   free(cl->cport);
  cl->cport = ((void*)0);
 } else {
  if ((np = malloc(strlen(p) + 1)) == ((void*)0))
   return (-1);
  strcpy(np, p);
  if (cl->cport != ((void*)0))
   free(cl->cport);
  cl->cport = np;
 }
 return (0);
}
