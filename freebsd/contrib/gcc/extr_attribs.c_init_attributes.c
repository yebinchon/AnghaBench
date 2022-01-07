
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* name; int min_length; int max_length; scalar_t__ type_required; int function_type_required; int decl_required; } ;
struct TYPE_7__ {TYPE_3__* format_attribute_table; TYPE_3__* attribute_table; TYPE_3__* common_attribute_table; } ;
struct TYPE_6__ {TYPE_3__* attribute_table; } ;


 size_t ARRAY_SIZE (TYPE_3__**) ;
 TYPE_3__** attribute_tables ;
 int attributes_initialized ;
 TYPE_3__* empty_attribute_table ;
 int gcc_assert (int) ;
 TYPE_2__ lang_hooks ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;
 TYPE_1__ targetm ;

__attribute__((used)) static void
init_attributes (void)
{
  size_t i;

  attribute_tables[0] = lang_hooks.common_attribute_table;
  attribute_tables[1] = lang_hooks.attribute_table;
  attribute_tables[2] = lang_hooks.format_attribute_table;
  attribute_tables[3] = targetm.attribute_table;


  for (i = 0; i < ARRAY_SIZE (attribute_tables); i++)
    if (attribute_tables[i] == ((void*)0))
      attribute_tables[i] = empty_attribute_table;
  attributes_initialized = 1;
}
