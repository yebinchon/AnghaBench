
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* basic_lookup_transparent_type (char const*) ;
 char* block_scope (int ) ;
 struct type* cp_lookup_transparent_type_loop (char const*,char const*,int ) ;
 int get_selected_block (int ) ;

struct type *
cp_lookup_transparent_type (const char *name)
{

  struct type *t = basic_lookup_transparent_type (name);
  const char *scope;

  if (t != ((void*)0))
    return t;



  scope = block_scope (get_selected_block (0));

  if (scope[0] == '\0')
    return ((void*)0);

  return cp_lookup_transparent_type_loop (name, scope, 0);
}
