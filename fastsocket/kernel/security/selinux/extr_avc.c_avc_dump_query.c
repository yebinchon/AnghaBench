
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* u32 ;
typedef int u16 ;
struct audit_buffer {int dummy; } ;
struct TYPE_3__ {char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BUG_ON (int) ;
 int audit_log_format (struct audit_buffer*,char*,char*) ;
 int kfree (char*) ;
 TYPE_1__* secclass_map ;
 int security_sid_to_context (char*,char**,char**) ;

__attribute__((used)) static void avc_dump_query(struct audit_buffer *ab, u32 ssid, u32 tsid, u16 tclass)
{
 int rc;
 char *scontext;
 u32 scontext_len;

 rc = security_sid_to_context(ssid, &scontext, &scontext_len);
 if (rc)
  audit_log_format(ab, "ssid=%d", ssid);
 else {
  audit_log_format(ab, "scontext=%s", scontext);
  kfree(scontext);
 }

 rc = security_sid_to_context(tsid, &scontext, &scontext_len);
 if (rc)
  audit_log_format(ab, " tsid=%d", tsid);
 else {
  audit_log_format(ab, " tcontext=%s", scontext);
  kfree(scontext);
 }

 BUG_ON(tclass >= ARRAY_SIZE(secclass_map));
 audit_log_format(ab, " tclass=%s", secclass_map[tclass-1].name);
}
