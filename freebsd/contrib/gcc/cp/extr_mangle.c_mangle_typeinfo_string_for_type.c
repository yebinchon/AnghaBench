
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int mangle_special_for_type (int const,char*) ;

tree
mangle_typeinfo_string_for_type (const tree type)
{
  return mangle_special_for_type (type, "TS");
}
