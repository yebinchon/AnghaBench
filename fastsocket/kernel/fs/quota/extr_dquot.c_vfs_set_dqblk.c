
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct if_dqblk {int dummy; } ;
struct dquot {int dummy; } ;
typedef int qid_t ;


 int ESRCH ;
 int do_set_dqblk (struct dquot*,struct if_dqblk*) ;
 struct dquot* dqget (struct super_block*,int ,int) ;
 int dqput (struct dquot*) ;

int vfs_set_dqblk(struct super_block *sb, int type, qid_t id,
    struct if_dqblk *di)
{
 struct dquot *dquot;
 int rc;

 dquot = dqget(sb, id, type);
 if (!dquot) {
  rc = -ESRCH;
  goto out;
 }
 rc = do_set_dqblk(dquot, di);
 dqput(dquot);
out:
 return rc;
}
