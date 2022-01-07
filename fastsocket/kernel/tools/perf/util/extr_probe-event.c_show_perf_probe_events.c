
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __show_perf_probe_events (int,int) ;
 int close (int) ;
 int init_vmlinux () ;
 int open_kprobe_events (int) ;
 int open_uprobe_events (int) ;
 int setup_pager () ;

int show_perf_probe_events(void)
{
 int fd, ret;

 setup_pager();
 fd = open_kprobe_events(0);

 if (fd < 0)
  return fd;

 ret = init_vmlinux();
 if (ret < 0)
  return ret;

 ret = __show_perf_probe_events(fd, 1);
 close(fd);

 fd = open_uprobe_events(0);
 if (fd >= 0) {
  ret = __show_perf_probe_events(fd, 0);
  close(fd);
 }

 return ret;
}
