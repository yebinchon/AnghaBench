
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u32 ;
struct mq_attr {int mq_curmsgs; int mq_msgsize; int mq_maxmsg; int mq_flags; } ;
struct TYPE_13__ {int fd; int flags; } ;
struct TYPE_22__ {int effective; int permitted; int inheritable; } ;
struct TYPE_12__ {TYPE_9__ cap; int pid; } ;
struct TYPE_21__ {int mqdes; struct mq_attr mqstat; } ;
struct TYPE_20__ {int mqdes; int sigev_signo; } ;
struct TYPE_18__ {int tv_nsec; int tv_sec; } ;
struct TYPE_19__ {TYPE_5__ abs_timeout; int msg_prio; int msg_len; int mqdes; } ;
struct TYPE_16__ {int mq_curmsgs; int mq_msgsize; int mq_maxmsg; int mq_flags; } ;
struct TYPE_17__ {TYPE_3__ attr; int mode; int oflag; } ;
struct TYPE_15__ {int perm_mode; int perm_gid; int perm_uid; int qbytes; int has_perm; int mode; int gid; int uid; int osid; } ;
struct TYPE_14__ {int nargs; int * args; } ;
struct audit_context {int type; TYPE_11__ mmap; TYPE_10__ capset; TYPE_8__ mq_getsetattr; TYPE_7__ mq_notify; TYPE_6__ mq_sendrecv; TYPE_4__ mq_open; TYPE_2__ ipc; TYPE_1__ socketcall; } ;
struct audit_buffer {int dummy; } ;




 int AUDIT_IPC_SET_PERM ;






 int GFP_KERNEL ;
 int audit_log_cap (struct audit_buffer*,char*,int *) ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 struct audit_buffer* audit_log_start (struct audit_context*,int ,int) ;
 int security_release_secctx (char*,int ) ;
 int security_secid_to_secctx (int ,char**,int *) ;

__attribute__((used)) static void show_special(struct audit_context *context, int *call_panic)
{
 struct audit_buffer *ab;
 int i;

 ab = audit_log_start(context, GFP_KERNEL, context->type);
 if (!ab)
  return;

 switch (context->type) {
 case 128: {
  int nargs = context->socketcall.nargs;
  audit_log_format(ab, "nargs=%d", nargs);
  for (i = 0; i < nargs; i++)
   audit_log_format(ab, " a%d=%lx", i,
    context->socketcall.args[i]);
  break; }
 case 134: {
  u32 osid = context->ipc.osid;

  audit_log_format(ab, "ouid=%u ogid=%u mode=%#o",
    context->ipc.uid, context->ipc.gid, context->ipc.mode);
  if (osid) {
   char *ctx = ((void*)0);
   u32 len;
   if (security_secid_to_secctx(osid, &ctx, &len)) {
    audit_log_format(ab, " osid=%u", osid);
    *call_panic = 1;
   } else {
    audit_log_format(ab, " obj=%s", ctx);
    security_release_secctx(ctx, len);
   }
  }
  if (context->ipc.has_perm) {
   audit_log_end(ab);
   ab = audit_log_start(context, GFP_KERNEL,
          AUDIT_IPC_SET_PERM);
   audit_log_format(ab,
    "qbytes=%lx ouid=%u ogid=%u mode=%#o",
    context->ipc.qbytes,
    context->ipc.perm_uid,
    context->ipc.perm_gid,
    context->ipc.perm_mode);
   if (!ab)
    return;
  }
  break; }
 case 130: {
  audit_log_format(ab,
   "oflag=0x%x mode=%#o mq_flags=0x%lx mq_maxmsg=%ld "
   "mq_msgsize=%ld mq_curmsgs=%ld",
   context->mq_open.oflag, context->mq_open.mode,
   context->mq_open.attr.mq_flags,
   context->mq_open.attr.mq_maxmsg,
   context->mq_open.attr.mq_msgsize,
   context->mq_open.attr.mq_curmsgs);
  break; }
 case 129: {
  audit_log_format(ab,
   "mqdes=%d msg_len=%zd msg_prio=%u "
   "abs_timeout_sec=%ld abs_timeout_nsec=%ld",
   context->mq_sendrecv.mqdes,
   context->mq_sendrecv.msg_len,
   context->mq_sendrecv.msg_prio,
   context->mq_sendrecv.abs_timeout.tv_sec,
   context->mq_sendrecv.abs_timeout.tv_nsec);
  break; }
 case 131: {
  audit_log_format(ab, "mqdes=%d sigev_signo=%d",
    context->mq_notify.mqdes,
    context->mq_notify.sigev_signo);
  break; }
 case 132: {
  struct mq_attr *attr = &context->mq_getsetattr.mqstat;
  audit_log_format(ab,
   "mqdes=%d mq_flags=0x%lx mq_maxmsg=%ld mq_msgsize=%ld "
   "mq_curmsgs=%ld ",
   context->mq_getsetattr.mqdes,
   attr->mq_flags, attr->mq_maxmsg,
   attr->mq_msgsize, attr->mq_curmsgs);
  break; }
 case 135: {
  audit_log_format(ab, "pid=%d", context->capset.pid);
  audit_log_cap(ab, "cap_pi", &context->capset.cap.inheritable);
  audit_log_cap(ab, "cap_pp", &context->capset.cap.permitted);
  audit_log_cap(ab, "cap_pe", &context->capset.cap.effective);
  break; }
 case 133: {
  audit_log_format(ab, "fd=%d flags=0x%x", context->mmap.fd,
     context->mmap.flags);
  break; }
 }
 audit_log_end(ab);
}
