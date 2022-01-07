
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vbase; } ;
typedef TYPE_1__ vtbl_init_data ;
typedef scalar_t__ tree ;


 scalar_t__ BINFO_BASE_ITERATE (scalar_t__,int,scalar_t__) ;
 scalar_t__ BINFO_VIRTUAL_P (scalar_t__) ;
 int add_vcall_offset_vtbl_entries_1 (scalar_t__,TYPE_1__*) ;
 scalar_t__ get_primary_binfo (scalar_t__) ;

__attribute__((used)) static void
add_vcall_offset_vtbl_entries_r (tree binfo, vtbl_init_data* vid)
{
  int i;
  tree primary_binfo;
  tree base_binfo;





  if (BINFO_VIRTUAL_P (binfo) && vid->vbase != binfo)
    return;


  primary_binfo = get_primary_binfo (binfo);
  if (primary_binfo)
    add_vcall_offset_vtbl_entries_r (primary_binfo, vid);


  add_vcall_offset_vtbl_entries_1 (binfo, vid);


  for (i = 0; BINFO_BASE_ITERATE (binfo, i, base_binfo); ++i)
    if (base_binfo != primary_binfo)
      add_vcall_offset_vtbl_entries_r (base_binfo, vid);
}
