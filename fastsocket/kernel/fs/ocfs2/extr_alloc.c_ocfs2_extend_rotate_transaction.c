
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_path {int p_tree_depth; } ;
struct TYPE_4__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 int ocfs2_extend_trans (TYPE_1__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ocfs2_extend_rotate_transaction(handle_t *handle, int subtree_depth,
        int op_credits,
        struct ocfs2_path *path)
{
 int ret;
 int credits = (path->p_tree_depth - subtree_depth) * 2 + 1 + op_credits;

 if (handle->h_buffer_credits < credits) {
  ret = ocfs2_extend_trans(handle,
      credits - handle->h_buffer_credits);
  if (ret)
   return ret;

  if (unlikely(handle->h_buffer_credits < credits))
   return ocfs2_extend_trans(handle, credits);
 }

 return 0;
}
