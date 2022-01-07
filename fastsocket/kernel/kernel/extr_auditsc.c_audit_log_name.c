
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct audit_names {int name_len; unsigned long ino; int type; int osid; int rdev; int gid; int uid; int mode; int dev; TYPE_1__* name; } ;
struct audit_context {int pwd; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int name; } ;



 int AUDIT_PATH ;




 int GFP_KERNEL ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int audit_log_d_path (struct audit_buffer*,char*,int *) ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_fcaps (struct audit_buffer*,struct audit_names*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_log_n_untrustedstring (struct audit_buffer*,int ,int) ;
 struct audit_buffer* audit_log_start (struct audit_context*,int ,int ) ;
 int audit_log_untrustedstring (struct audit_buffer*,int ) ;
 int security_release_secctx (char*,int ) ;
 scalar_t__ security_secid_to_secctx (int ,char**,int *) ;

__attribute__((used)) static void audit_log_name(struct audit_context *context, struct audit_names *n,
      int record_num, int *call_panic)
{
 struct audit_buffer *ab;
 ab = audit_log_start(context, GFP_KERNEL, AUDIT_PATH);
 if (!ab)
  return;

 audit_log_format(ab, "item=%d", record_num);

 if (n->name) {
  switch (n->name_len) {
  case 132:

   audit_log_format(ab, " name=");
   audit_log_untrustedstring(ab, n->name->name);
   break;
  case 0:


   audit_log_d_path(ab, "name=", &context->pwd);
   break;
  default:

   audit_log_format(ab, " name=");
   audit_log_n_untrustedstring(ab, n->name->name,
          n->name_len);
  }
 } else
  audit_log_format(ab, " name=(null)");

 if (n->ino != (unsigned long)-1) {
  audit_log_format(ab, " inode=%lu"
     " dev=%02x:%02x mode=%#o"
     " ouid=%u ogid=%u rdev=%02x:%02x",
     n->ino,
     MAJOR(n->dev),
     MINOR(n->dev),
     n->mode,
     n->uid,
     n->gid,
     MAJOR(n->rdev),
     MINOR(n->rdev));
 }
 if (n->osid != 0) {
  char *ctx = ((void*)0);
  u32 len;
  if (security_secid_to_secctx(
   n->osid, &ctx, &len)) {
   audit_log_format(ab, " osid=%u", n->osid);
   *call_panic = 2;
  } else {
   audit_log_format(ab, " obj=%s", ctx);
   security_release_secctx(ctx, len);
  }
 }


 audit_log_format(ab, " nametype=");
 switch(n->type) {
 case 129:
  audit_log_format(ab, "NORMAL");
  break;
 case 128:
  audit_log_format(ab, "PARENT");
  break;
 case 130:
  audit_log_format(ab, "DELETE");
  break;
 case 131:
  audit_log_format(ab, "CREATE");
  break;
 default:
  audit_log_format(ab, "UNKNOWN");
  break;
 }

 audit_log_fcaps(ab, n);

 audit_log_end(ab);
}
