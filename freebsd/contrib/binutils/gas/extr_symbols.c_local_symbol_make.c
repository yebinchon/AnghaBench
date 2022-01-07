
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
struct local_symbol {char* lsy_name; int lsy_value; int lsy_section; int * lsy_marker; } ;
typedef int segT ;
typedef int fragS ;
typedef int PTR ;


 int hash_jam (int ,char*,int ) ;
 int local_hash ;
 int local_symbol_count ;
 int local_symbol_set_frag (struct local_symbol*,int *) ;
 int notes ;
 scalar_t__ obstack_alloc (int *,int) ;
 char* save_symbol_name (char const*) ;

__attribute__((used)) static struct local_symbol *
local_symbol_make (const char *name, segT section, valueT value, fragS *frag)
{
  char *name_copy;
  struct local_symbol *ret;

  ++local_symbol_count;

  name_copy = save_symbol_name (name);

  ret = (struct local_symbol *) obstack_alloc (&notes, sizeof *ret);
  ret->lsy_marker = ((void*)0);
  ret->lsy_name = name_copy;
  ret->lsy_section = section;
  local_symbol_set_frag (ret, frag);
  ret->lsy_value = value;

  hash_jam (local_hash, name_copy, (PTR) ret);

  return ret;
}
