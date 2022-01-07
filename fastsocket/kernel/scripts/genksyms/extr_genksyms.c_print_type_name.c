
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;


 int SYM_NORMAL ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;
 char** symbol_type_name ;

__attribute__((used)) static void print_type_name(enum symbol_type type, const char *name)
{
 if (type != SYM_NORMAL)
  fprintf(stderr, "%s %s", symbol_type_name[type], name);
 else
  fprintf(stderr, "%s", name);
}
