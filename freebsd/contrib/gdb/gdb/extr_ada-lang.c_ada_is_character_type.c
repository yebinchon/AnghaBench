
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_STREQ (char const*,char*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_CHAR ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_RANGE ;
 char* ada_type_name (struct type*) ;

int
ada_is_character_type (struct type *type)
{
  const char *name = ada_type_name (type);
  return
    name != ((void*)0)
    && (TYPE_CODE (type) == TYPE_CODE_CHAR
 || TYPE_CODE (type) == TYPE_CODE_INT
 || TYPE_CODE (type) == TYPE_CODE_RANGE)
    && (DEPRECATED_STREQ (name, "character") || DEPRECATED_STREQ (name, "wide_character")
 || DEPRECATED_STREQ (name, "unsigned char"));
}
