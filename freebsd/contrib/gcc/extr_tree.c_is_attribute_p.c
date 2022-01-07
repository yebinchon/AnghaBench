
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int is_attribute_with_length_p (char const*,int ,int ) ;
 int strlen (char const*) ;

int
is_attribute_p (const char *attr, tree ident)
{
  return is_attribute_with_length_p (attr, strlen (attr), ident);
}
