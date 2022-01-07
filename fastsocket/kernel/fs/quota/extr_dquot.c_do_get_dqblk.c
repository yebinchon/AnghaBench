
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_dqblk {int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; scalar_t__ dqb_rsvspace; scalar_t__ dqb_curspace; int dqb_bsoftlimit; int dqb_bhardlimit; } ;
struct if_dqblk {int dqb_valid; int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; scalar_t__ dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;
struct dquot {struct mem_dqblk dq_dqb; } ;


 int QIF_ALL ;
 int dq_data_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* stoqb (int ) ;

__attribute__((used)) static void do_get_dqblk(struct dquot *dquot, struct if_dqblk *di)
{
 struct mem_dqblk *dm = &dquot->dq_dqb;

 spin_lock(&dq_data_lock);
 di->dqb_bhardlimit = stoqb(dm->dqb_bhardlimit);
 di->dqb_bsoftlimit = stoqb(dm->dqb_bsoftlimit);
 di->dqb_curspace = dm->dqb_curspace + dm->dqb_rsvspace;
 di->dqb_ihardlimit = dm->dqb_ihardlimit;
 di->dqb_isoftlimit = dm->dqb_isoftlimit;
 di->dqb_curinodes = dm->dqb_curinodes;
 di->dqb_btime = dm->dqb_btime;
 di->dqb_itime = dm->dqb_itime;
 di->dqb_valid = QIF_ALL;
 spin_unlock(&dq_data_lock);
}
