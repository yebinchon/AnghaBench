
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vtbl_init_data ;
typedef scalar_t__ tree ;


 int build_vbase_offset_vtbl_entries (scalar_t__,int *) ;
 int build_vcall_offset_vtbl_entries (scalar_t__,int *) ;
 scalar_t__ get_primary_binfo (scalar_t__) ;

__attribute__((used)) static void
build_vcall_and_vbase_vtbl_entries (tree binfo, vtbl_init_data* vid)
{
  tree b;



  b = get_primary_binfo (binfo);
  if (b)
    build_vcall_and_vbase_vtbl_entries (b, vid);


  build_vbase_offset_vtbl_entries (binfo, vid);

  build_vcall_offset_vtbl_entries (binfo, vid);
}
