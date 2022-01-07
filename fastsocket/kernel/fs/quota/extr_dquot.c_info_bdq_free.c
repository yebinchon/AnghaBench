
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dqb_curspace; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_bhardlimit; } ;
struct dquot {TYPE_1__ dq_dqb; int dq_flags; } ;
typedef scalar_t__ qsize_t ;


 int DQ_FAKE_B ;
 int QUOTA_NL_BHARDBELOW ;
 int QUOTA_NL_BSOFTBELOW ;
 int QUOTA_NL_NOWARN ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int info_bdq_free(struct dquot *dquot, qsize_t space)
{
 if (test_bit(DQ_FAKE_B, &dquot->dq_flags) ||
     dquot->dq_dqb.dqb_curspace <= dquot->dq_dqb.dqb_bsoftlimit)
  return QUOTA_NL_NOWARN;

 if (dquot->dq_dqb.dqb_curspace - space <= dquot->dq_dqb.dqb_bsoftlimit)
  return QUOTA_NL_BSOFTBELOW;
 if (dquot->dq_dqb.dqb_curspace >= dquot->dq_dqb.dqb_bhardlimit &&
     dquot->dq_dqb.dqb_curspace - space < dquot->dq_dqb.dqb_bhardlimit)
  return QUOTA_NL_BHARDBELOW;
 return QUOTA_NL_NOWARN;
}
