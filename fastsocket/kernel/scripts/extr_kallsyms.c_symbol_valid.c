
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sym_entry {scalar_t__* sym; scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ end; char* etext; } ;
struct TYPE_3__ {scalar_t__ end; char* etext; } ;


 int all_symbols ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strstr (char*,char*) ;
 scalar_t__ symbol_prefix_char ;
 scalar_t__ symbol_valid_tr (struct sym_entry*) ;
 TYPE_2__* text_range_inittext ;
 TYPE_1__* text_range_text ;

__attribute__((used)) static int symbol_valid(struct sym_entry *s)
{





 static char *special_symbols[] = {
  "kallsyms_addresses",
  "kallsyms_num_syms",
  "kallsyms_names",
  "kallsyms_markers",
  "kallsyms_token_table",
  "kallsyms_token_index",


  "_SDA_BASE_",
  "_SDA2_BASE_",
  ((void*)0) };
 int i;
 int offset = 1;


 if (symbol_prefix_char && *(s->sym + 1) == symbol_prefix_char)
  offset++;



 if (!all_symbols) {
  if (symbol_valid_tr(s) == 0)
   return 0;






  if ((s->addr == text_range_text->end &&
    strcmp((char *)s->sym + offset, text_range_text->etext)) ||
      (s->addr == text_range_inittext->end &&
    strcmp((char *)s->sym + offset, text_range_inittext->etext)))
   return 0;
 }


 if (strstr((char *)s->sym + offset, "_compiled."))
  return 0;

 for (i = 0; special_symbols[i]; i++)
  if( strcmp((char *)s->sym + offset, special_symbols[i]) == 0 )
   return 0;

 return 1;
}
