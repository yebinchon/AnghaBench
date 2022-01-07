
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_data {int temp; scalar_t__ size; int temp_file; } ;
struct tracepoint_path {int dummy; } ;
struct list_head {int dummy; } ;


 int O_RDWR ;
 int SEEK_CUR ;
 int close (int) ;
 int die (char*,...) ;
 struct tracepoint_path* get_tracepoints_path (struct list_head*) ;
 scalar_t__ lseek (int,int ,int ) ;
 struct tracing_data* malloc_or_die (int) ;
 int mkstemp (int ) ;
 int open (int ,int ) ;
 int output_fd ;
 int put_tracepoints_path (struct tracepoint_path*) ;
 int read_event_files (struct tracepoint_path*) ;
 int read_ftrace_files (struct tracepoint_path*) ;
 int read_ftrace_printk () ;
 int read_header_files () ;
 int read_proc_kallsyms () ;
 int snprintf (int ,int,char*) ;
 int tracing_data_header () ;

struct tracing_data *tracing_data_get(struct list_head *pattrs,
          int fd, bool temp)
{
 struct tracepoint_path *tps;
 struct tracing_data *tdata;

 output_fd = fd;

 tps = get_tracepoints_path(pattrs);
 if (!tps)
  return ((void*)0);

 tdata = malloc_or_die(sizeof(*tdata));
 tdata->temp = temp;
 tdata->size = 0;

 if (temp) {
  int temp_fd;

  snprintf(tdata->temp_file, sizeof(tdata->temp_file),
    "/tmp/perf-XXXXXX");
  if (!mkstemp(tdata->temp_file))
   die("Can't make temp file");

  temp_fd = open(tdata->temp_file, O_RDWR);
  if (temp_fd < 0)
   die("Can't read '%s'", tdata->temp_file);





  output_fd = temp_fd;
 }

 tracing_data_header();
 read_header_files();
 read_ftrace_files(tps);
 read_event_files(tps);
 read_proc_kallsyms();
 read_ftrace_printk();





 if (temp) {
  tdata->size = lseek(output_fd, 0, SEEK_CUR);
  close(output_fd);
  output_fd = fd;
 }

 put_tracepoints_path(tps);
 return tdata;
}
