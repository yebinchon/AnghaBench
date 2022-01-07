
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfcopy {char* as; int as_cap; size_t as_sz; } ;


 int EXIT_FAILURE ;
 int _INIT_AS_CAP ;
 int err (int ,char*) ;
 char* malloc (int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
add_to_ar_str_table(struct elfcopy *ecp, const char *name)
{

 if (ecp->as == ((void*)0)) {
  ecp->as_cap = _INIT_AS_CAP;
  ecp->as_sz = 0;
  if ((ecp->as = malloc(ecp->as_cap)) == ((void*)0))
   err(EXIT_FAILURE, "malloc failed");
 }





 while (ecp->as_sz + strlen(name) + 3 > ecp->as_cap) {
  ecp->as_cap *= 2;
  ecp->as = realloc(ecp->as, ecp->as_cap);
  if (ecp->as == ((void*)0))
   err(EXIT_FAILURE, "realloc failed");
 }
 strncpy(&ecp->as[ecp->as_sz], name, strlen(name));
 ecp->as_sz += strlen(name);
 ecp->as[ecp->as_sz++] = '/';
 ecp->as[ecp->as_sz++] = '\n';
}
