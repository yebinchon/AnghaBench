
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_event {int dummy; } ;


 int EINVAL ;
 int errno ;
 int free (char*) ;
 int pr_debug (char*,...) ;
 int pr_warning (char*,int ) ;
 int probe_event_dry_run ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* synthesize_probe_trace_command (struct probe_trace_event*) ;
 int write (int,char*,int ) ;

__attribute__((used)) static int write_probe_trace_event(int fd, struct probe_trace_event *tev)
{
 int ret = 0;
 char *buf = synthesize_probe_trace_command(tev);

 if (!buf) {
  pr_debug("Failed to synthesize probe trace event.\n");
  return -EINVAL;
 }

 pr_debug("Writing event: %s\n", buf);
 if (!probe_event_dry_run) {
  ret = write(fd, buf, strlen(buf));
  if (ret <= 0)
   pr_warning("Failed to write event: %s\n",
       strerror(errno));
 }
 free(buf);
 return ret;
}
