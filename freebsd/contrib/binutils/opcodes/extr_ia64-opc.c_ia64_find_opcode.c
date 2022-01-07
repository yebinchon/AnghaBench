
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_opcode {int dummy; } ;


 short find_main_ent (short) ;
 short find_string_ent (char*) ;
 int get_opc_prefix (char const**,char*) ;
 struct ia64_opcode* ia64_find_matching_opcode (char const*,short) ;
 int strlen (char const*) ;

struct ia64_opcode *
ia64_find_opcode (const char *name)
{
  char op[129];
  const char *suffix;
  short place;
  short name_index;

  if (strlen (name) > 128)
    {
      return ((void*)0);
    }
  suffix = name;
  get_opc_prefix (&suffix, op);
  name_index = find_string_ent (op);
  if (name_index < 0)
    {
      return ((void*)0);
    }

  place = find_main_ent (name_index);

  if (place < 0)
    {
      return ((void*)0);
    }
  return ia64_find_matching_opcode (name, place);
}
