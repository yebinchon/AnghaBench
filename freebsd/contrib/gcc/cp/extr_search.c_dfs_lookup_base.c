
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct lookup_base_data_s {scalar_t__ binfo; int via_virtual; int ambiguous; int t; scalar_t__ want_any; int repeated_base; int base; } ;


 int BINFO_TYPE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SAME_BINFO_TYPE_P (int ,int ) ;
 scalar_t__ binfo_via_virtual (scalar_t__,int ) ;
 scalar_t__ dfs_skip_bases ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;

__attribute__((used)) static tree
dfs_lookup_base (tree binfo, void *data_)
{
  struct lookup_base_data_s *data = (struct lookup_base_data_s *) data_;

  if (SAME_BINFO_TYPE_P (BINFO_TYPE (binfo), data->base))
    {
      if (!data->binfo)
 {
   data->binfo = binfo;
   data->via_virtual
     = binfo_via_virtual (data->binfo, data->t) != NULL_TREE;

   if (!data->repeated_base)

     return binfo;

   if (data->want_any && !data->via_virtual)


     return binfo;

   return dfs_skip_bases;
 }
      else
 {
   gcc_assert (binfo != data->binfo);


   if (!data->want_any)
     {

       data->binfo = NULL_TREE;
       data->ambiguous = 1;
       return error_mark_node;
     }


   if (!binfo_via_virtual (binfo, data->t))
     {
       data->binfo = binfo;
       data->via_virtual = 0;
       return binfo;
     }



   return dfs_skip_bases;
 }
    }

  return NULL_TREE;
}
