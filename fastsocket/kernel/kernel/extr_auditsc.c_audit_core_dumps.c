
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uid_t ;
typedef long u32 ;
struct audit_buffer {int dummy; } ;
typedef int gid_t ;
struct TYPE_5__ {long pid; int comm; } ;


 int AUDIT_ANOM_ABEND ;
 int GFP_KERNEL ;
 long SIGQUIT ;
 int audit_enabled ;
 int audit_get_loginuid (TYPE_1__*) ;
 unsigned int audit_get_sessionid (TYPE_1__*) ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 struct audit_buffer* audit_log_start (int *,int ,int ) ;
 int audit_log_untrustedstring (struct audit_buffer*,int ) ;
 TYPE_1__* current ;
 int current_uid_gid (int *,int *) ;
 int security_release_secctx (char*,long) ;
 scalar_t__ security_secid_to_secctx (long,char**,long*) ;
 int security_task_getsecid (TYPE_1__*,long*) ;

void audit_core_dumps(long signr)
{
 struct audit_buffer *ab;
 u32 sid;
 uid_t auid = audit_get_loginuid(current), uid;
 gid_t gid;
 unsigned int sessionid = audit_get_sessionid(current);

 if (!audit_enabled)
  return;

 if (signr == SIGQUIT)
  return;

 ab = audit_log_start(((void*)0), GFP_KERNEL, AUDIT_ANOM_ABEND);
 current_uid_gid(&uid, &gid);
 audit_log_format(ab, "auid=%u uid=%u gid=%u ses=%u",
    auid, uid, gid, sessionid);
 security_task_getsecid(current, &sid);
 if (sid) {
  char *ctx = ((void*)0);
  u32 len;

  if (security_secid_to_secctx(sid, &ctx, &len))
   audit_log_format(ab, " ssid=%u", sid);
  else {
   audit_log_format(ab, " subj=%s", ctx);
   security_release_secctx(ctx, len);
  }
 }
 audit_log_format(ab, " pid=%d comm=", current->pid);
 audit_log_untrustedstring(ab, current->comm);
 audit_log_format(ab, " sig=%ld", signr);
 audit_log_end(ab);
}
