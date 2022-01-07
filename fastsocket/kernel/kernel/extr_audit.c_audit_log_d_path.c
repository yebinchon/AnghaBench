
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct audit_buffer {int gfp_mask; } ;


 scalar_t__ IS_ERR (char*) ;
 scalar_t__ PATH_MAX ;
 int audit_log_format (struct audit_buffer*,char*,char const*) ;
 int audit_log_string (struct audit_buffer*,char*) ;
 int audit_log_untrustedstring (struct audit_buffer*,char*) ;
 char* d_path (struct path*,char*,scalar_t__) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;

void audit_log_d_path(struct audit_buffer *ab, const char *prefix,
        struct path *path)
{
 char *p, *pathname;

 if (prefix)
  audit_log_format(ab, " %s", prefix);


 pathname = kmalloc(PATH_MAX+11, ab->gfp_mask);
 if (!pathname) {
  audit_log_string(ab, "<no_memory>");
  return;
 }
 p = d_path(path, pathname, PATH_MAX+11);
 if (IS_ERR(p)) {

  audit_log_string(ab, "<too_long>");
 } else
  audit_log_untrustedstring(ab, p);
 kfree(pathname);
}
