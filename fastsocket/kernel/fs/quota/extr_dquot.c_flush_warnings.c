
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dquot {TYPE_1__* dq_sb; int dq_id; int dq_type; } ;
struct TYPE_2__ {int s_dev; } ;


 int MAXQUOTAS ;
 char QUOTA_NL_NOWARN ;
 int print_warning (struct dquot*,char) ;
 int quota_send_warning (int ,int ,int ,char) ;
 int warning_issued (struct dquot*,char) ;

__attribute__((used)) static void flush_warnings(struct dquot *const *dquots, char *warntype)
{
 struct dquot *dq;
 int i;

 for (i = 0; i < MAXQUOTAS; i++) {
  dq = dquots[i];
  if (dq && warntype[i] != QUOTA_NL_NOWARN &&
      !warning_issued(dq, warntype[i])) {



   quota_send_warning(dq->dq_type, dq->dq_id,
        dq->dq_sb->s_dev, warntype[i]);
  }
 }
}
