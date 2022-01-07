
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_STREQ (char*,char*) ;
 char* ada_type_name (struct type*) ;

__attribute__((used)) static int
is_nondebugging_type (struct type *type)
{
  char *name = ada_type_name (type);
  return (name != ((void*)0) && DEPRECATED_STREQ (name, "<variable, no debug info>"));
}
