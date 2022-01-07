
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 char const** tree_code_name ;

__attribute__((used)) static const char *
code_to_string (enum tree_code c)
{
  return tree_code_name [c];
}
