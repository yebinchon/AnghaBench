
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sy_resolved; int sy_used; } ;
typedef TYPE_1__ symbolS ;
struct local_symbol {int lsy_name; int lsy_value; int lsy_section; int * lsy_marker; } ;


 int TC_LOCAL_SYMFIELD_CONVERT (struct local_symbol*,TYPE_1__*) ;
 int assert (int ) ;
 int hash_jam (int ,int ,int *) ;
 int local_hash ;
 int local_symbol_conversion_count ;
 scalar_t__ local_symbol_converted_p (struct local_symbol*) ;
 int local_symbol_get_frag (struct local_symbol*) ;
 TYPE_1__* local_symbol_get_real_symbol (struct local_symbol*) ;
 int local_symbol_mark_converted (struct local_symbol*) ;
 scalar_t__ local_symbol_resolved_p (struct local_symbol*) ;
 int local_symbol_set_real_symbol (struct local_symbol*,TYPE_1__*) ;
 TYPE_1__* symbol_new (int ,int ,int ,int ) ;
 int symbol_table_insert (TYPE_1__*) ;

__attribute__((used)) static symbolS *
local_symbol_convert (struct local_symbol *locsym)
{
  symbolS *ret;

  assert (locsym->lsy_marker == ((void*)0));
  if (local_symbol_converted_p (locsym))
    return local_symbol_get_real_symbol (locsym);

  ++local_symbol_conversion_count;

  ret = symbol_new (locsym->lsy_name, locsym->lsy_section, locsym->lsy_value,
      local_symbol_get_frag (locsym));

  if (local_symbol_resolved_p (locsym))
    ret->sy_resolved = 1;


  ret->sy_used = 1;





  symbol_table_insert (ret);

  local_symbol_mark_converted (locsym);
  local_symbol_set_real_symbol (locsym, ret);

  hash_jam (local_hash, locsym->lsy_name, ((void*)0));

  return ret;
}
