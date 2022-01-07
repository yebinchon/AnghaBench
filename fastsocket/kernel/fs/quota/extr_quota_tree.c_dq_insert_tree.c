
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtree_mem_dqinfo {int dummy; } ;
struct dquot {int dummy; } ;


 int QT_TREEOFF ;
 int do_insert_tree (struct qtree_mem_dqinfo*,struct dquot*,int*,int ) ;

__attribute__((used)) static inline int dq_insert_tree(struct qtree_mem_dqinfo *info,
     struct dquot *dquot)
{
 int tmp = QT_TREEOFF;
 return do_insert_tree(info, dquot, &tmp, 0);
}
