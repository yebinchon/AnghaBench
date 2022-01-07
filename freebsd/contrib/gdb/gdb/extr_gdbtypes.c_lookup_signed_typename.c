
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct block {int dummy; } ;


 char* alloca (scalar_t__) ;
 struct type* lookup_typename (char*,struct block*,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

struct type *
lookup_signed_typename (char *name)
{
  struct type *t;
  char *uns = alloca (strlen (name) + 8);

  strcpy (uns, "signed ");
  strcpy (uns + 7, name);
  t = lookup_typename (uns, (struct block *) ((void*)0), 1);

  if (t != ((void*)0))
    return t;
  return lookup_typename (name, (struct block *) ((void*)0), 0);
}
