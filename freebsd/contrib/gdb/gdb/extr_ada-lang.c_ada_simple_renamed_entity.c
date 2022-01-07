
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;


 struct type* SYMBOL_TYPE (struct symbol*) ;
 char* TYPE_FIELD_NAME (struct type*,int ) ;
 int TYPE_NFIELDS (struct type*) ;
 int error (char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* xmalloc (int) ;

const char *
ada_simple_renamed_entity (struct symbol *sym)
{
  struct type *type;
  const char *raw_name;
  int len;
  char *result;

  type = SYMBOL_TYPE (sym);
  if (type == ((void*)0) || TYPE_NFIELDS (type) < 1)
    error ("Improperly encoded renaming.");

  raw_name = TYPE_FIELD_NAME (type, 0);
  len = (raw_name == ((void*)0) ? 0 : strlen (raw_name)) - 5;
  if (len <= 0)
    error ("Improperly encoded renaming.");

  result = xmalloc (len + 1);


  strncpy (result, raw_name, len);
  result[len] = '\000';
  return result;
}
