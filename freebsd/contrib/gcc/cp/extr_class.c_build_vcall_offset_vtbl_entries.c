
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int generate_vcall_entries; scalar_t__ vbase; int derived; } ;
typedef TYPE_1__ vtbl_init_data ;
typedef scalar_t__ tree ;


 scalar_t__ BINFO_VIRTUAL_P (scalar_t__) ;
 scalar_t__ TYPE_BINFO (int ) ;
 int add_vcall_offset_vtbl_entries_r (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
build_vcall_offset_vtbl_entries (tree binfo, vtbl_init_data* vid)
{



  if (BINFO_VIRTUAL_P (binfo) || binfo == TYPE_BINFO (vid->derived))
    {
      vid->vbase = binfo;


      if (!BINFO_VIRTUAL_P (binfo))
 vid->generate_vcall_entries = 0;

      add_vcall_offset_vtbl_entries_r (binfo, vid);
    }
}
