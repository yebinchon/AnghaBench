
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int GROW_VECT (char*,size_t,int) ;
 struct type* ada_find_any_type (char*) ;
 char* ada_type_name (struct type*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

struct type *
ada_find_parallel_type (struct type *type, const char *suffix)
{
  static char *name;
  static size_t name_len = 0;
  struct symbol **syms;
  struct block **blocks;
  int nsyms;
  int len;
  char *typename = ada_type_name (type);

  if (typename == ((void*)0))
    return ((void*)0);

  len = strlen (typename);

  GROW_VECT (name, name_len, len + strlen (suffix) + 1);

  strcpy (name, typename);
  strcpy (name + len, suffix);

  return ada_find_any_type (name);
}
