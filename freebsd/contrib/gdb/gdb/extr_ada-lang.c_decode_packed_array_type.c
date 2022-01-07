
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 scalar_t__ DEPRECATED_STREQ (char*,char*) ;
 scalar_t__ LOC_TYPEDEF ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 int VAR_DOMAIN ;
 int ada_lookup_symbol_list (char*,int ,int ,struct symbol***,struct block***) ;
 char* ada_type_name (struct type*) ;
 scalar_t__ alloca (scalar_t__) ;
 struct type* check_typedef (struct type*) ;
 int get_selected_block (int *) ;
 int memcpy (char*,char const*,int) ;
 struct type* packed_array_type (struct type*,long*) ;
 int sscanf (char*,char*,long*) ;
 scalar_t__ strlen (char const*) ;
 char* strstr (char const*,char*) ;
 int warning (char*) ;

__attribute__((used)) static struct type *
decode_packed_array_type (struct type *type)
{
  struct symbol **syms;
  struct block **blocks;
  const char *raw_name = ada_type_name (check_typedef (type));
  char *name = (char *) alloca (strlen (raw_name) + 1);
  char *tail = strstr (raw_name, "___XP");
  struct type *shadow_type;
  long bits;
  int i, n;

  memcpy (name, raw_name, tail - raw_name);
  name[tail - raw_name] = '\000';



  n = ada_lookup_symbol_list (name, get_selected_block (((void*)0)),
         VAR_DOMAIN, &syms, &blocks);
  for (i = 0; i < n; i += 1)
    if (syms[i] != ((void*)0) && SYMBOL_CLASS (syms[i]) == LOC_TYPEDEF
 && DEPRECATED_STREQ (name, ada_type_name (SYMBOL_TYPE (syms[i]))))
      break;
  if (i >= n)
    {
      warning ("could not find bounds information on packed array");
      return ((void*)0);
    }
  shadow_type = SYMBOL_TYPE (syms[i]);

  if (TYPE_CODE (shadow_type) != TYPE_CODE_ARRAY)
    {
      warning ("could not understand bounds information on packed array");
      return ((void*)0);
    }

  if (sscanf (tail + sizeof ("___XP") - 1, "%ld", &bits) != 1)
    {
      warning ("could not understand bit size information on packed array");
      return ((void*)0);
    }

  return packed_array_type (shadow_type, &bits);
}
