
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ERROR_MARK ;
 int build_cp_library_fn (int ,int ,int ) ;
 int get_identifier (char const*) ;

tree
build_cp_library_fn_ptr (const char* name, tree type)
{
  return build_cp_library_fn (get_identifier (name), ERROR_MARK, type);
}
