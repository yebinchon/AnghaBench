
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_client {char* chost; } ;


 int free (char*) ;
 char* malloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

int
snmp_client_set_host(struct snmp_client *cl, const char *h)
{
 char *np;

 if (h == ((void*)0)) {
  if (cl->chost != ((void*)0))
   free(cl->chost);
  cl->chost = ((void*)0);
 } else {
  if ((np = malloc(strlen(h) + 1)) == ((void*)0))
   return (-1);
  strcpy(np, h);
  if (cl->chost != ((void*)0))
   free(cl->chost);
  cl->chost = np;
 }
 return (0);
}
