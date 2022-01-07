
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_address (int ) ;
 int build_nop (int ,int ) ;
 int get_tinfo_decl (int ) ;
 int mark_used (int ) ;
 int type_info_ptr_type ;

__attribute__((used)) static tree
get_tinfo_ptr (tree type)
{
  tree decl = get_tinfo_decl (type);

  mark_used (decl);
  return build_nop (type_info_ptr_type,
      build_address (decl));
}
