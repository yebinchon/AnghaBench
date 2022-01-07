
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int mangle_vtbl_for_type (int ) ;

__attribute__((used)) static tree
get_vtable_name (tree type)
{
  return mangle_vtbl_for_type (type);
}
