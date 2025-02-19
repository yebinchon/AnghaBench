
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {unsigned int crc; int crc_valid; } ;
struct module {int dummy; } ;
typedef enum export { ____Placeholder_export } export ;


 struct symbol* find_symbol (char const*) ;
 struct symbol* new_symbol (char const*,struct module*,int) ;

__attribute__((used)) static void sym_update_crc(const char *name, struct module *mod,
      unsigned int crc, enum export export)
{
 struct symbol *s = find_symbol(name);

 if (!s)
  s = new_symbol(name, mod, export);
 s->crc = crc;
 s->crc_valid = 1;
}
