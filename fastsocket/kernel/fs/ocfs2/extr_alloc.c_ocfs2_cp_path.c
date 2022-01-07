
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_path {TYPE_1__* p_node; } ;
struct TYPE_2__ {scalar_t__ bh; int el; } ;


 int BUG_ON (int) ;
 int OCFS2_MAX_PATH_DEPTH ;
 int get_bh (scalar_t__) ;
 int ocfs2_reinit_path (struct ocfs2_path*,int) ;
 scalar_t__ path_root_access (struct ocfs2_path*) ;
 scalar_t__ path_root_bh (struct ocfs2_path*) ;
 scalar_t__ path_root_el (struct ocfs2_path*) ;

__attribute__((used)) static void ocfs2_cp_path(struct ocfs2_path *dest, struct ocfs2_path *src)
{
 int i;

 BUG_ON(path_root_bh(dest) != path_root_bh(src));
 BUG_ON(path_root_el(dest) != path_root_el(src));
 BUG_ON(path_root_access(dest) != path_root_access(src));

 ocfs2_reinit_path(dest, 1);

 for(i = 1; i < OCFS2_MAX_PATH_DEPTH; i++) {
  dest->p_node[i].bh = src->p_node[i].bh;
  dest->p_node[i].el = src->p_node[i].el;

  if (dest->p_node[i].bh)
   get_bh(dest->p_node[i].bh);
 }
}
