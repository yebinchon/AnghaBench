
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int check_possible_namespace_symbols_loop (char const*,int ,struct objfile*) ;
 int cp_find_first_component (char const*) ;

void
cp_check_possible_namespace_symbols (const char *name, struct objfile *objfile)
{
  check_possible_namespace_symbols_loop (name,
      cp_find_first_component (name),
      objfile);
}
