
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_4__ {char* name; int flags; int value; int * section; } ;
typedef TYPE_1__ asymbol ;
typedef int asection ;


 TYPE_1__* bfd_make_empty_symbol (int *) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int symptr ;
 TYPE_1__** symtab ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static void
quick_symbol (bfd *abfd,
       const char *n1,
       const char *n2,
       const char *n3,
       asection *sec,
       int flags,
       int addr)
{
  asymbol *sym;
  char *name = xmalloc (strlen (n1) + strlen (n2) + strlen (n3) + 1);

  strcpy (name, n1);
  strcat (name, n2);
  strcat (name, n3);
  sym = bfd_make_empty_symbol (abfd);
  sym->name = name;
  sym->section = sec;
  sym->flags = flags;
  sym->value = addr;
  symtab[symptr++] = sym;
}
