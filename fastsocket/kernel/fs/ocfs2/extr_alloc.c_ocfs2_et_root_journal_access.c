
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_tree {int (* et_root_journal_access ) (int *,int ,int ,int) ;int et_root_bh; int et_ci; } ;
typedef int handle_t ;


 int stub1 (int *,int ,int ,int) ;

__attribute__((used)) static inline int ocfs2_et_root_journal_access(handle_t *handle,
            struct ocfs2_extent_tree *et,
            int type)
{
 return et->et_root_journal_access(handle, et->et_ci, et->et_root_bh,
       type);
}
