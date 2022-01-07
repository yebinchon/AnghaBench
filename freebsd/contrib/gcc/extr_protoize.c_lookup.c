
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* hash_next; int symbol; } ;
typedef TYPE_1__ hash_table_entry ;


 TYPE_1__* add_symbol (TYPE_1__*,char const*) ;
 int hash_mask ;
 int strcmp (int ,char const*) ;
 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static hash_table_entry *
lookup (hash_table_entry *hash_tab_p, const char *search_symbol)
{
  int hash_value = 0;
  const char *search_symbol_char_p = search_symbol;
  hash_table_entry *p;

  while (*search_symbol_char_p)
    hash_value += *search_symbol_char_p++;
  hash_value &= hash_mask;
  p = &hash_tab_p[hash_value];
  if (! p->symbol)
      return add_symbol (p, search_symbol);
  if (!strcmp (p->symbol, search_symbol))
    return p;
  while (p->hash_next)
    {
      p = p->hash_next;
      if (!strcmp (p->symbol, search_symbol))
 return p;
    }
  p->hash_next = xmalloc (sizeof (hash_table_entry));
  p = p->hash_next;
  return add_symbol (p, search_symbol);
}
