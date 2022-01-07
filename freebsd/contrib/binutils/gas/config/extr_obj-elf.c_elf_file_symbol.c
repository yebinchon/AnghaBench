
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_16__ {TYPE_1__* bsym; } ;
typedef TYPE_2__ symbolS ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {int flags; } ;


 int BSF_FILE ;
 int absolute_section ;
 int ecoff_new_file (char const*,int) ;
 TYPE_12__* symbol_get_bfdsym (TYPE_2__*) ;
 int symbol_insert (TYPE_2__*,TYPE_2__*,TYPE_2__**,int *) ;
 int symbol_lastP ;
 TYPE_2__* symbol_new (char const*,int ,int ,int *) ;
 int symbol_remove (TYPE_2__*,TYPE_2__**,int *) ;
 TYPE_2__* symbol_rootP ;
 int symbol_set_frag (TYPE_2__*,int *) ;
 int verify_symbol_chain (TYPE_2__*,int ) ;
 int zero_address_frag ;

void
elf_file_symbol (const char *s, int appfile)
{
  if (!appfile
      || symbol_rootP == ((void*)0)
      || symbol_rootP->bsym == ((void*)0)
      || (symbol_rootP->bsym->flags & BSF_FILE) == 0)
    {
      symbolS *sym;

      sym = symbol_new (s, absolute_section, 0, ((void*)0));
      symbol_set_frag (sym, &zero_address_frag);
      symbol_get_bfdsym (sym)->flags |= BSF_FILE;

      if (symbol_rootP != sym)
 {
   symbol_remove (sym, &symbol_rootP, &symbol_lastP);
   symbol_insert (sym, symbol_rootP, &symbol_rootP, &symbol_lastP);



 }
    }




}
