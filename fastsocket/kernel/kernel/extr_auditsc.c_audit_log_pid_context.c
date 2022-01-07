
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef scalar_t__ u32 ;
struct audit_context {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef int pid_t ;


 int AUDIT_OBJ_PID ;
 int GFP_KERNEL ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 struct audit_buffer* audit_log_start (struct audit_context*,int ,int ) ;
 int audit_log_untrustedstring (struct audit_buffer*,char*) ;
 int security_release_secctx (char*,scalar_t__) ;
 scalar_t__ security_secid_to_secctx (scalar_t__,char**,scalar_t__*) ;

__attribute__((used)) static int audit_log_pid_context(struct audit_context *context, pid_t pid,
     uid_t auid, uid_t uid, unsigned int sessionid,
     u32 sid, char *comm)
{
 struct audit_buffer *ab;
 char *ctx = ((void*)0);
 u32 len;
 int rc = 0;

 ab = audit_log_start(context, GFP_KERNEL, AUDIT_OBJ_PID);
 if (!ab)
  return rc;

 audit_log_format(ab, "opid=%d oauid=%d ouid=%d oses=%d", pid, auid,
    uid, sessionid);
 if (sid) {
  if (security_secid_to_secctx(sid, &ctx, &len)) {
   audit_log_format(ab, " obj=(none)");
   rc = 1;
  } else {
   audit_log_format(ab, " obj=%s", ctx);
   security_release_secctx(ctx, len);
  }
 }
 audit_log_format(ab, " ocomm=");
 audit_log_untrustedstring(ab, comm);
 audit_log_end(ab);

 return rc;
}
