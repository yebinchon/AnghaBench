
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int taints; } ;
struct kernel_symbol {int dummy; } ;
typedef int Elf_Shdr ;


 int TAINT_PROPRIETARY_MODULE ;
 int check_version (int *,unsigned int,char const*,struct module*,unsigned long const*,struct module*) ;
 struct kernel_symbol* find_symbol (char const*,struct module**,unsigned long const**,int,int) ;
 int use_module (struct module*,struct module*) ;

__attribute__((used)) static const struct kernel_symbol *resolve_symbol(Elf_Shdr *sechdrs,
        unsigned int versindex,
        const char *name,
        struct module *mod)
{
 struct module *owner;
 const struct kernel_symbol *sym;
 const unsigned long *crc;

 sym = find_symbol(name, &owner, &crc,
     !(mod->taints & (1 << TAINT_PROPRIETARY_MODULE)), 1);


 if (sym) {
  if (!check_version(sechdrs, versindex, name, mod, crc, owner)
      || !use_module(mod, owner))
   sym = ((void*)0);
 }
 return sym;
}
