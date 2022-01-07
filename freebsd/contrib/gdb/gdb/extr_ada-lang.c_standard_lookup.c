
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int domain_enum ;


 struct symbol* lookup_symbol (char const*,struct block*,int ,int ,int *) ;

__attribute__((used)) static struct symbol *
standard_lookup (const char *name, domain_enum domain)
{
  struct symbol *sym;
  sym = lookup_symbol (name, (struct block *) ((void*)0), domain, 0, ((void*)0));
  return sym;
}
