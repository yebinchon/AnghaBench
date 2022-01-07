
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct record_layout_info_s {int bitpos; int t; } ;
typedef int splay_tree ;
typedef struct record_layout_info_s* record_layout_info ;


 int BINFO_OFFSET (int ) ;
 int BINFO_TYPE (int ) ;
 scalar_t__ BINFO_VIRTUAL_P (int ) ;
 int CLASSTYPE_ALIGN (int ) ;
 scalar_t__ CLASS_TYPE_P (int ) ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_ALIGN (int ) ;
 scalar_t__ UNION_TYPE ;
 int abi_version_at_least (int) ;
 int bitsize_int (int ) ;
 int byte_position (int ) ;
 int convert (int ,int ) ;
 scalar_t__ layout_conflict_p (int ,int ,int ,int) ;
 int normalize_rli (struct record_layout_info_s*) ;
 int place_field (struct record_layout_info_s*,int ) ;
 int propagate_binfo_offsets (int ,int ) ;
 int size_binop (int ,int ,int ) ;
 int size_diffop (int ,int ) ;
 int ssizetype ;

__attribute__((used)) static void
layout_nonempty_base_or_field (record_layout_info rli,
          tree decl,
          tree binfo,
          splay_tree offsets)
{
  tree offset = NULL_TREE;
  bool field_p;
  tree type;

  if (binfo)
    {




      type = TREE_TYPE (binfo);
      field_p = 0;
    }
  else
    {
      type = TREE_TYPE (decl);
      field_p = 1;
    }




  while (1)
    {
      struct record_layout_info_s old_rli = *rli;


      place_field (rli, decl);
      offset = byte_position (decl);
      if (TREE_CODE (rli->t) == UNION_TYPE)
 break;


      if (!abi_version_at_least (2) && binfo && BINFO_VIRTUAL_P (binfo))
 break;
      if (layout_conflict_p (field_p ? type : binfo, offset,
        offsets, field_p))
 {



   *rli = old_rli;


   rli->bitpos
     = size_binop (PLUS_EXPR, rli->bitpos,
     bitsize_int (binfo
           ? CLASSTYPE_ALIGN (type)
           : TYPE_ALIGN (type)));
   normalize_rli (rli);
 }
      else

 break;
    }



  if (binfo && CLASS_TYPE_P (BINFO_TYPE (binfo)))




    propagate_binfo_offsets (binfo,
        size_diffop (convert (ssizetype, offset),
       convert (ssizetype,
         BINFO_OFFSET (binfo))));
}
