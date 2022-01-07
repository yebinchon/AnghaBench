
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dqb_curinodes; scalar_t__ dqb_isoftlimit; scalar_t__ dqb_ihardlimit; } ;
struct dquot {TYPE_1__ dq_dqb; int dq_type; int dq_sb; int dq_flags; } ;
typedef scalar_t__ qsize_t ;


 int DQ_FAKE_B ;
 int QUOTA_NL_IHARDBELOW ;
 int QUOTA_NL_ISOFTBELOW ;
 int QUOTA_NL_NOWARN ;
 int sb_has_quota_limits_enabled (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int info_idq_free(struct dquot *dquot, qsize_t inodes)
{
 qsize_t newinodes;

 if (test_bit(DQ_FAKE_B, &dquot->dq_flags) ||
     dquot->dq_dqb.dqb_curinodes <= dquot->dq_dqb.dqb_isoftlimit ||
     !sb_has_quota_limits_enabled(dquot->dq_sb, dquot->dq_type))
  return QUOTA_NL_NOWARN;

 newinodes = dquot->dq_dqb.dqb_curinodes - inodes;
 if (newinodes <= dquot->dq_dqb.dqb_isoftlimit)
  return QUOTA_NL_ISOFTBELOW;
 if (dquot->dq_dqb.dqb_curinodes >= dquot->dq_dqb.dqb_ihardlimit &&
     newinodes < dquot->dq_dqb.dqb_ihardlimit)
  return QUOTA_NL_IHARDBELOW;
 return QUOTA_NL_NOWARN;
}
