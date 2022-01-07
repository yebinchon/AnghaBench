
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_8__ {unsigned char const* comm; int pid; int audit_context; } ;
struct TYPE_7__ {int uid; } ;
struct TYPE_6__ {int s_id; } ;


 int GFP_KERNEL ;
 int audit_get_loginuid (TYPE_3__*) ;
 int audit_get_sessionid (TYPE_3__*) ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 struct audit_buffer* audit_log_start (int ,int ,int) ;
 int audit_log_string (struct audit_buffer*,char const*) ;
 int audit_log_task_context (struct audit_buffer*) ;
 int audit_log_untrustedstring (struct audit_buffer*,unsigned char const*) ;
 TYPE_3__* current ;
 TYPE_2__* current_cred () ;
 int ima_audit ;

void integrity_audit_msg(int audit_msgno, struct inode *inode,
    const unsigned char *fname, const char *op,
    const char *cause, int result, int audit_info)
{
 struct audit_buffer *ab;

 if (!ima_audit && audit_info == 1)
  return;

 ab = audit_log_start(current->audit_context, GFP_KERNEL, audit_msgno);
 audit_log_format(ab, "pid=%d uid=%u auid=%u ses=%u",
    current->pid, current_cred()->uid,
    audit_get_loginuid(current),
    audit_get_sessionid(current));
 audit_log_task_context(ab);
 audit_log_format(ab, " op=");
 audit_log_string(ab, op);
 audit_log_format(ab, " cause=");
 audit_log_string(ab, cause);
 audit_log_format(ab, " comm=");
 audit_log_untrustedstring(ab, current->comm);
 if (fname) {
  audit_log_format(ab, " name=");
  audit_log_untrustedstring(ab, fname);
 }
 if (inode)
  audit_log_format(ab, " dev=%s ino=%lu",
     inode->i_sb->s_id, inode->i_ino);
 audit_log_format(ab, " res=%d", !result);
 audit_log_end(ab);
}
