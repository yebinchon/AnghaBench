
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BINFO_TYPE (int ) ;
 int dump_vtable (int ,int ,int ) ;
 int get_vtbl_decl_for_binfo (int ) ;
 int initialize_artificial_var (int ,int ) ;
 int layout_vtable_decl (int ,int ) ;
 int list_length (int ) ;

__attribute__((used)) static void
initialize_vtable (tree binfo, tree inits)
{
  tree decl;

  layout_vtable_decl (binfo, list_length (inits));
  decl = get_vtbl_decl_for_binfo (binfo);
  initialize_artificial_var (decl, inits);
  dump_vtable (BINFO_TYPE (binfo), binfo, decl);
}
