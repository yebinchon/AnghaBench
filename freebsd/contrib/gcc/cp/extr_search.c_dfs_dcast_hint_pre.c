
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct dcast_data_s {void* offset; scalar_t__ repeated_base; scalar_t__ virt_depth; int subtype; } ;


 void* BINFO_OFFSET (void*) ;
 int BINFO_TYPE (void*) ;
 scalar_t__ BINFO_VIRTUAL_P (void*) ;
 void* NULL_TREE ;
 scalar_t__ SAME_BINFO_TYPE_P (int ,int ) ;
 void* dfs_skip_bases ;
 void* ssize_int (int) ;

__attribute__((used)) static tree
dfs_dcast_hint_pre (tree binfo, void *data_)
{
  struct dcast_data_s *data = (struct dcast_data_s *) data_;

  if (BINFO_VIRTUAL_P (binfo))
    data->virt_depth++;

  if (SAME_BINFO_TYPE_P (BINFO_TYPE (binfo), data->subtype))
    {
      if (data->virt_depth)
 {
   data->offset = ssize_int (-1);
   return data->offset;
 }
      if (data->offset)
 data->offset = ssize_int (-3);
      else
 data->offset = BINFO_OFFSET (binfo);

      return data->repeated_base ? dfs_skip_bases : data->offset;
    }

  return NULL_TREE;
}
