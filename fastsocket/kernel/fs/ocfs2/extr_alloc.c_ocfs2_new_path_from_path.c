
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_path {int dummy; } ;


 struct ocfs2_path* ocfs2_new_path (int ,int ,int ) ;
 int path_root_access (struct ocfs2_path*) ;
 int path_root_bh (struct ocfs2_path*) ;
 int path_root_el (struct ocfs2_path*) ;

struct ocfs2_path *ocfs2_new_path_from_path(struct ocfs2_path *path)
{
 return ocfs2_new_path(path_root_bh(path), path_root_el(path),
         path_root_access(path));
}
