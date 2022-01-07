
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtree_mem_dqinfo {int dummy; } ;
struct dquot {int dummy; } ;
typedef int loff_t ;


 int QT_TREEOFF ;
 int find_tree_dqentry (struct qtree_mem_dqinfo*,struct dquot*,int ,int ) ;

__attribute__((used)) static inline loff_t find_dqentry(struct qtree_mem_dqinfo *info,
      struct dquot *dquot)
{
 return find_tree_dqentry(info, dquot, QT_TREEOFF, 0);
}
