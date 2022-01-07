
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_log_untrustedstring (struct audit_buffer*,char*) ;

__attribute__((used)) static void ima_log_string(struct audit_buffer *ab, char *key, char *value)
{
 audit_log_format(ab, "%s=", key);
 audit_log_untrustedstring(ab, value);
 audit_log_format(ab, " ");
}
