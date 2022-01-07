
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct lookup_base_data_s {scalar_t__ binfo; int ambiguous; int via_virtual; int want_any; int repeated_base; scalar_t__ base; scalar_t__ t; } ;
typedef int base_kind ;
typedef scalar_t__ base_access ;


 scalar_t__ BINFO_TYPE (scalar_t__) ;
 int CLASSTYPE_REPEATED_BASE_P (scalar_t__) ;
 int COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 int TYPE_MAIN_VARIANT (scalar_t__) ;
 int TYPE_P (scalar_t__) ;
 int accessible_base_p (scalar_t__,scalar_t__,int) ;
 scalar_t__ ba_any ;
 scalar_t__ ba_check_bit ;
 scalar_t__ ba_ignore_scope ;
 scalar_t__ ba_quiet ;

 int bk_inaccessible ;

 int bk_proper_base ;
 int bk_same_type ;
 int bk_via_virtual ;
 scalar_t__ complete_type (int ) ;
 int dfs_lookup_base ;
 int dfs_walk_once (scalar_t__,int ,int *,struct lookup_base_data_s*) ;
 int error (char*,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int ) ;

tree
lookup_base (tree t, tree base, base_access access, base_kind *kind_ptr)
{
  tree binfo;
  tree t_binfo;
  base_kind bk;

  if (t == error_mark_node || base == error_mark_node)
    {
      if (kind_ptr)
 *kind_ptr = 128;
      return error_mark_node;
    }
  gcc_assert (TYPE_P (base));

  if (!TYPE_P (t))
    {
      t_binfo = t;
      t = BINFO_TYPE (t);
    }
  else
    {
      t = complete_type (TYPE_MAIN_VARIANT (t));
      t_binfo = TYPE_BINFO (t);
    }

  base = complete_type (TYPE_MAIN_VARIANT (base));

  if (t_binfo)
    {
      struct lookup_base_data_s data;

      data.t = t;
      data.base = base;
      data.binfo = NULL_TREE;
      data.ambiguous = data.via_virtual = 0;
      data.repeated_base = CLASSTYPE_REPEATED_BASE_P (t);
      data.want_any = access == ba_any;

      dfs_walk_once (t_binfo, dfs_lookup_base, ((void*)0), &data);
      binfo = data.binfo;

      if (!binfo)
 bk = data.ambiguous ? 129 : 128;
      else if (binfo == t_binfo)
 bk = bk_same_type;
      else if (data.via_virtual)
 bk = bk_via_virtual;
      else
 bk = bk_proper_base;
    }
  else
    {
      binfo = NULL_TREE;
      bk = 128;
    }


  if (access != ba_any)
    switch (bk)
      {
      case 128:
 break;

      case 129:
 if (!(access & ba_quiet))
   {
     error ("%qT is an ambiguous base of %qT", base, t);
     binfo = error_mark_node;
   }
 break;

      default:
 if ((access & ba_check_bit)






     && COMPLETE_TYPE_P (base)
     && !accessible_base_p (t, base, !(access & ba_ignore_scope)))
   {
     if (!(access & ba_quiet))
       {
  error ("%qT is an inaccessible base of %qT", base, t);
  binfo = error_mark_node;
       }
     else
       binfo = NULL_TREE;
     bk = bk_inaccessible;
   }
 break;
      }

  if (kind_ptr)
    *kind_ptr = bk;

  return binfo;
}
