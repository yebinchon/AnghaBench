
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int O_APPEND ;
 int O_RDONLY ;
 int O_RDWR ;
 int PATH_MAX ;
 char* debugfs_find_mountpoint () ;
 int e_snprintf (char*,int,char*,char const*,char const*) ;
 int open (char*,int ,int ) ;
 int pr_debug (char*,char*,int) ;
 int pr_warning (char*) ;
 int print_warn_msg (char*,int) ;
 int probe_event_dry_run ;

__attribute__((used)) static int open_probe_events(const char *trace_file, bool readwrite,
    bool is_kprobe)
{
 char buf[PATH_MAX];
 const char *__debugfs;
 int ret;

 __debugfs = debugfs_find_mountpoint();
 if (__debugfs == ((void*)0)) {
  pr_warning("Debugfs is not mounted.\n");
  return -ENOENT;
 }

 ret = e_snprintf(buf, PATH_MAX, "%s/%s", __debugfs, trace_file);
 if (ret >= 0) {
  pr_debug("Opening %s write=%d\n", buf, readwrite);
  if (readwrite && !probe_event_dry_run)
   ret = open(buf, O_RDWR, O_APPEND);
  else
   ret = open(buf, O_RDONLY, 0);

  if (ret < 0)
   print_warn_msg(buf, is_kprobe);
 }
 return ret;
}
