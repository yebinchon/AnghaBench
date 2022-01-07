
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* am_get_progname () ;
 int dbg_opt ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int show_opts (char,int ) ;
 int stderr ;
 int xlog_opt ;

__attribute__((used)) static void
show_usage(void)
{
  fprintf(stderr,
   "Usage: %s [-nprvHS] [-a mount_point] [-c cache_time] [-d domain]\n\t[-k kernel_arch] [-l logfile%s\n\t[-t timeout.retrans] [-w wait_timeout] [-A arch] [-C cluster_name]\n\t[-o op_sys_ver] [-O op_sys_name]\n\t[-F conf_file] [-T conf_tag]", am_get_progname(),
   "]"

   );




  fputc('\n', stderr);


  show_opts('x', xlog_opt);



  fprintf(stderr, "\t[directory mapname [-map_options]] ...\n");
}
