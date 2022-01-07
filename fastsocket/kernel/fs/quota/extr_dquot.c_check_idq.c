
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dqb_curinodes; scalar_t__ dqb_ihardlimit; scalar_t__ dqb_isoftlimit; scalar_t__ dqb_itime; } ;
struct dquot {size_t dq_type; int dq_sb; TYPE_1__ dq_dqb; int dq_flags; } ;
typedef scalar_t__ qsize_t ;
struct TYPE_6__ {TYPE_2__* info; } ;
struct TYPE_5__ {scalar_t__ dqi_igrace; } ;


 int DQ_FAKE_B ;
 int NO_QUOTA ;
 char QUOTA_NL_IHARDWARN ;
 char QUOTA_NL_ISOFTLONGWARN ;
 char QUOTA_NL_ISOFTWARN ;
 char QUOTA_NL_NOWARN ;
 int QUOTA_OK ;
 scalar_t__ get_seconds () ;
 int ignore_hardlimit (struct dquot*) ;
 TYPE_3__* sb_dqopt (int ) ;
 int sb_has_quota_limits_enabled (int ,size_t) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int check_idq(struct dquot *dquot, qsize_t inodes, char *warntype)
{
 qsize_t newinodes = dquot->dq_dqb.dqb_curinodes + inodes;

 *warntype = QUOTA_NL_NOWARN;
 if (!sb_has_quota_limits_enabled(dquot->dq_sb, dquot->dq_type) ||
     test_bit(DQ_FAKE_B, &dquot->dq_flags))
  return QUOTA_OK;

 if (dquot->dq_dqb.dqb_ihardlimit &&
     newinodes > dquot->dq_dqb.dqb_ihardlimit &&
            !ignore_hardlimit(dquot)) {
  *warntype = QUOTA_NL_IHARDWARN;
  return NO_QUOTA;
 }

 if (dquot->dq_dqb.dqb_isoftlimit &&
     newinodes > dquot->dq_dqb.dqb_isoftlimit &&
     dquot->dq_dqb.dqb_itime &&
     get_seconds() >= dquot->dq_dqb.dqb_itime &&
            !ignore_hardlimit(dquot)) {
  *warntype = QUOTA_NL_ISOFTLONGWARN;
  return NO_QUOTA;
 }

 if (dquot->dq_dqb.dqb_isoftlimit &&
     newinodes > dquot->dq_dqb.dqb_isoftlimit &&
     dquot->dq_dqb.dqb_itime == 0) {
  *warntype = QUOTA_NL_ISOFTWARN;
  dquot->dq_dqb.dqb_itime = get_seconds() +
      sb_dqopt(dquot->dq_sb)->info[dquot->dq_type].dqi_igrace;
 }

 return QUOTA_OK;
}
