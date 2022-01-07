
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_flags; } ;


 int DQ_BLKS_B ;
 int DQ_INODES_B ;
 int const QUOTA_NL_BHARDWARN ;
 int const QUOTA_NL_BSOFTLONGWARN ;
 int const QUOTA_NL_IHARDWARN ;
 int const QUOTA_NL_ISOFTLONGWARN ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static int warning_issued(struct dquot *dquot, const int warntype)
{
 int flag = (warntype == QUOTA_NL_BHARDWARN ||
  warntype == QUOTA_NL_BSOFTLONGWARN) ? DQ_BLKS_B :
  ((warntype == QUOTA_NL_IHARDWARN ||
  warntype == QUOTA_NL_ISOFTLONGWARN) ? DQ_INODES_B : 0);

 if (!flag)
  return 0;
 return test_and_set_bit(flag, &dquot->dq_flags);
}
