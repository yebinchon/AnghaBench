
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int et_root_journal_access; int et_root_el; int et_root_bh; } ;


 struct ocfs2_path* ocfs2_new_path (int ,int ,int ) ;

struct ocfs2_path *ocfs2_new_path_from_et(struct ocfs2_extent_tree *et)
{
 return ocfs2_new_path(et->et_root_bh, et->et_root_el,
         et->et_root_journal_access);
}
