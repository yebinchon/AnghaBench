
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {int path; } ;
struct audit_krule {int listnr; int filterkey; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_CONFIG_CHANGE ;
 int GFP_NOFS ;
 scalar_t__ audit_enabled ;
 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_log_key (struct audit_buffer*,int ) ;
 struct audit_buffer* audit_log_start (int *,int ,int ) ;
 int audit_log_string (struct audit_buffer*,char*) ;
 int audit_log_untrustedstring (struct audit_buffer*,int ) ;
 int current ;

__attribute__((used)) static void audit_watch_log_rule_change(struct audit_krule *r, struct audit_watch *w, char *op)
{
 if (audit_enabled) {
  struct audit_buffer *ab;
  ab = audit_log_start(((void*)0), GFP_NOFS, AUDIT_CONFIG_CHANGE);
  audit_log_format(ab, "auid=%u ses=%u op=",
     audit_get_loginuid(current),
     audit_get_sessionid(current));
  audit_log_string(ab, op);
  audit_log_format(ab, " path=");
  audit_log_untrustedstring(ab, w->path);
  audit_log_key(ab, r->filterkey);
  audit_log_format(ab, " list=%d res=1", r->listnr);
  audit_log_end(ab);
 }
}
