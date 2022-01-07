
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef char* u32 ;
typedef int u16 ;
struct audit_buffer {int dummy; } ;


 int GFP_KERNEL ;
 int audit_enabled ;
 int audit_log_format (struct audit_buffer*,char*,char*,...) ;
 struct audit_buffer* audit_log_start (int *,int ,int ) ;
 int security_release_secctx (char*,char*) ;
 int security_secid_to_secctx (char*,char**,char**) ;

__attribute__((used)) static int audit_log_common_recv_msg(struct audit_buffer **ab, u16 msg_type,
         u32 pid, u32 uid, uid_t auid, u32 ses,
         u32 sid)
{
 int rc = 0;
 char *ctx = ((void*)0);
 u32 len;

 if (!audit_enabled) {
  *ab = ((void*)0);
  return rc;
 }

 *ab = audit_log_start(((void*)0), GFP_KERNEL, msg_type);
 audit_log_format(*ab, "user pid=%d uid=%u auid=%u ses=%u",
    pid, uid, auid, ses);
 if (sid) {
  rc = security_secid_to_secctx(sid, &ctx, &len);
  if (rc)
   audit_log_format(*ab, " ssid=%u", sid);
  else {
   audit_log_format(*ab, " subj=%s", ctx);
   security_release_secctx(ctx, len);
  }
 }

 return rc;
}
