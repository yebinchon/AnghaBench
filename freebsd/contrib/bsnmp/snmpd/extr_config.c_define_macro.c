
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro {int length; int perm; struct macro* value; struct macro* name; } ;


 int LIST_INSERT_HEAD (int *,struct macro*,int ) ;
 int free (struct macro*) ;
 int link ;
 int macros ;
 void* malloc (int) ;
 int strcpy (struct macro*,char const*) ;
 int strlen (char const*) ;

int
define_macro(const char *name, const char *value)
{
 struct macro *m;

 if ((m = malloc(sizeof(*m))) == ((void*)0))
  return (-1);
 if ((m->name = malloc(strlen(name) + 1)) == ((void*)0)) {
  free(m);
  return (-1);
 }
 strcpy(m->name, name);
 if ((m->value = malloc(strlen(value) + 1)) == ((void*)0)) {
  free(m->name);
  free(m);
  return (-1);
 }
 strcpy(m->value, value);
 m->length = strlen(value);
 m->perm = 1;
 LIST_INSERT_HEAD(&macros, m, link);
 return (0);
}
