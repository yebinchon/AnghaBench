
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; struct dquot** i_dquot; } ;
struct dquot {int dummy; } ;
struct TYPE_2__ {int dqptr_sem; } ;


 int MAXQUOTAS ;
 int down_write (int *) ;
 int dqput (struct dquot*) ;
 TYPE_1__* sb_dqopt (int ) ;
 int up_write (int *) ;

int dquot_drop(struct inode *inode)
{
 int cnt;
 struct dquot *put[MAXQUOTAS];

 down_write(&sb_dqopt(inode->i_sb)->dqptr_sem);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  put[cnt] = inode->i_dquot[cnt];
  inode->i_dquot[cnt] = ((void*)0);
 }
 up_write(&sb_dqopt(inode->i_sb)->dqptr_sem);

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  dqput(put[cnt]);
 return 0;
}
