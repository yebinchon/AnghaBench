
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {char* name; int flags; struct symbol* next; int type; } ;


 int SYMBOL_CHOICE ;
 int SYMBOL_CONST ;
 int S_UNKNOWN ;
 struct symbol* malloc (int) ;
 int memset (struct symbol*,int ,int) ;
 int strcmp (char*,char const*) ;
 char* strdup (char const*) ;
 struct symbol** symbol_hash ;
 struct symbol symbol_mod ;
 struct symbol symbol_no ;
 struct symbol symbol_yes ;

struct symbol *sym_lookup(const char *name, int flags)
{
 struct symbol *symbol;
 const char *ptr;
 char *new_name;
 int hash = 0;

 if (name) {
  if (name[0] && !name[1]) {
   switch (name[0]) {
   case 'y': return &symbol_yes;
   case 'm': return &symbol_mod;
   case 'n': return &symbol_no;
   }
  }
  for (ptr = name; *ptr; ptr++)
   hash += *ptr;
  hash &= 0xff;

  for (symbol = symbol_hash[hash]; symbol; symbol = symbol->next) {
   if (!strcmp(symbol->name, name) &&
       (flags ? symbol->flags & flags
       : !(symbol->flags & (SYMBOL_CONST|SYMBOL_CHOICE))))
    return symbol;
  }
  new_name = strdup(name);
 } else {
  new_name = ((void*)0);
  hash = 256;
 }

 symbol = malloc(sizeof(*symbol));
 memset(symbol, 0, sizeof(*symbol));
 symbol->name = new_name;
 symbol->type = S_UNKNOWN;
 symbol->flags |= flags;

 symbol->next = symbol_hash[hash];
 symbol_hash[hash] = symbol;

 return symbol;
}
