
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av_decision {int auditdeny; scalar_t__ flags; int seqno; scalar_t__ auditallow; scalar_t__ allowed; } ;


 int latest_granting ;

__attribute__((used)) static void avd_init(struct av_decision *avd)
{
 avd->allowed = 0;
 avd->auditallow = 0;
 avd->auditdeny = 0xffffffff;
 avd->seqno = latest_granting;
 avd->flags = 0;
}
