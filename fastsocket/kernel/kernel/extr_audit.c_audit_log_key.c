
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int audit_log_format (struct audit_buffer*,char*) ;
 int audit_log_untrustedstring (struct audit_buffer*,char*) ;

void audit_log_key(struct audit_buffer *ab, char *key)
{
 audit_log_format(ab, " key=");
 if (key)
  audit_log_untrustedstring(ab, key);
 else
  audit_log_format(ab, "(null)");
}
