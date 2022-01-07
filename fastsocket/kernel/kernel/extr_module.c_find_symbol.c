
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct kernel_symbol {int dummy; } ;
struct find_symbol_arg {char const* name; int gplok; int warn; unsigned long* crc; struct kernel_symbol const* sym; struct module* owner; } ;


 int DEBUGP (char*,char const*) ;
 scalar_t__ each_symbol (int ,struct find_symbol_arg*) ;
 int find_symbol_in_section ;

const struct kernel_symbol *find_symbol(const char *name,
     struct module **owner,
     const unsigned long **crc,
     bool gplok,
     bool warn)
{
 struct find_symbol_arg fsa;

 fsa.name = name;
 fsa.gplok = gplok;
 fsa.warn = warn;

 if (each_symbol(find_symbol_in_section, &fsa)) {
  if (owner)
   *owner = fsa.owner;
  if (crc)
   *crc = fsa.crc;
  return fsa.sym;
 }

 DEBUGP("Failed to find symbol %s\n", name);
 return ((void*)0);
}
