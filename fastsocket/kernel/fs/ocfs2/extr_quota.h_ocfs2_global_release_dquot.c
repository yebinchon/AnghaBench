
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dummy; } ;


 int __ocfs2_sync_dquot (struct dquot*,int) ;

__attribute__((used)) static inline int ocfs2_global_release_dquot(struct dquot *dquot)
{
 return __ocfs2_sync_dquot(dquot, 1);
}
