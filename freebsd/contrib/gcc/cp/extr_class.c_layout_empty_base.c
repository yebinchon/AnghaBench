
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int splay_tree ;


 int BINFO_OFFSET (int ) ;
 int BINFO_TYPE (int ) ;
 int CLASSTYPE_ALIGN_UNIT (int ) ;
 int OPT_Wabi ;
 scalar_t__ abi_version_at_least (int) ;
 int convert (int ,int ) ;
 int gcc_assert (int ) ;
 int integer_zerop (int ) ;
 int is_empty_class (int ) ;
 scalar_t__ layout_conflict_p (int ,int ,int ,int ) ;
 int propagate_binfo_offsets (int ,int ) ;
 int size_diffop (int ,int ) ;
 int size_zero_node ;
 int ssize_int (int ) ;
 int ssizetype ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static bool
layout_empty_base (tree binfo, tree eoc, splay_tree offsets)
{
  tree alignment;
  tree basetype = BINFO_TYPE (binfo);
  bool atend = 0;


  gcc_assert (is_empty_class (basetype));
  alignment = ssize_int (CLASSTYPE_ALIGN_UNIT (basetype));

  if (!integer_zerop (BINFO_OFFSET (binfo)))
    {
      if (abi_version_at_least (2))
 propagate_binfo_offsets
   (binfo, size_diffop (size_zero_node, BINFO_OFFSET (binfo)));
      else
 warning (OPT_Wabi,
   "offset of empty base %qT may not be ABI-compliant and may"
   "change in a future version of GCC",
   BINFO_TYPE (binfo));
    }



  if (layout_conflict_p (binfo,
    BINFO_OFFSET (binfo),
    offsets,
                 0))
    {


      atend = 1;
      propagate_binfo_offsets (binfo, convert (ssizetype, eoc));
      while (1)
 {
   if (!layout_conflict_p (binfo,
      BINFO_OFFSET (binfo),
      offsets,
                   0))

     break;


   propagate_binfo_offsets (binfo, alignment);
 }
    }
  return atend;
}
