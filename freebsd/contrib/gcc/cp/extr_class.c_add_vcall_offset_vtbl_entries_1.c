
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vbase; scalar_t__ binfo; int rtti_binfo; scalar_t__ ctor_vtbl_p; } ;
typedef TYPE_1__ vtbl_init_data ;
typedef scalar_t__ tree ;


 scalar_t__ BINFO_INHERITANCE_CHAIN (scalar_t__) ;
 int BINFO_TYPE (scalar_t__) ;
 scalar_t__ BINFO_VIRTUALS (scalar_t__) ;
 scalar_t__ BINFO_VIRTUAL_P (scalar_t__) ;
 scalar_t__ BV_FN (scalar_t__) ;
 int DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_VINDEX (scalar_t__) ;
 int SAME_BINFO_TYPE_P (int ,int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TYPE_BINFO (int ) ;
 scalar_t__ TYPE_METHODS (int ) ;
 scalar_t__ abi_version_at_least (int) ;
 int add_vcall_offset (scalar_t__,scalar_t__,TYPE_1__*) ;
 int gcc_assert (int) ;
 scalar_t__ get_primary_binfo (scalar_t__) ;
 scalar_t__ original_binfo (scalar_t__,int ) ;

__attribute__((used)) static void
add_vcall_offset_vtbl_entries_1 (tree binfo, vtbl_init_data* vid)
{

  if (abi_version_at_least (2))
    {
      tree orig_fn;



      for (orig_fn = TYPE_METHODS (BINFO_TYPE (binfo));
    orig_fn;
    orig_fn = TREE_CHAIN (orig_fn))
 if (DECL_VINDEX (orig_fn))
   add_vcall_offset (orig_fn, binfo, vid);
    }
  else
    {
      tree derived_virtuals;
      tree base_virtuals;
      tree orig_virtuals;


      tree non_primary_binfo;




      non_primary_binfo = binfo;
      while (BINFO_INHERITANCE_CHAIN (non_primary_binfo))
 {
   tree b;







   if (BINFO_VIRTUAL_P (non_primary_binfo))
     {
       gcc_assert (non_primary_binfo == vid->vbase);
       non_primary_binfo = vid->binfo;
       break;
     }

   b = BINFO_INHERITANCE_CHAIN (non_primary_binfo);
   if (get_primary_binfo (b) != non_primary_binfo)
     break;
   non_primary_binfo = b;
 }

      if (vid->ctor_vtbl_p)


 non_primary_binfo
   = original_binfo (non_primary_binfo, vid->rtti_binfo);

      for (base_virtuals = BINFO_VIRTUALS (binfo),
      derived_virtuals = BINFO_VIRTUALS (non_primary_binfo),
      orig_virtuals = BINFO_VIRTUALS (TYPE_BINFO (BINFO_TYPE (binfo)));
    base_virtuals;
    base_virtuals = TREE_CHAIN (base_virtuals),
      derived_virtuals = TREE_CHAIN (derived_virtuals),
      orig_virtuals = TREE_CHAIN (orig_virtuals))
 {
   tree orig_fn;



   orig_fn = BV_FN (orig_virtuals);




   if (!SAME_BINFO_TYPE_P (BINFO_TYPE (binfo), DECL_CONTEXT (orig_fn)))
     continue;

   add_vcall_offset (orig_fn, binfo, vid);
 }
    }
}
