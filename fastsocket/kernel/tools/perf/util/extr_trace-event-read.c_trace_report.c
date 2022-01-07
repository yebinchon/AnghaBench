
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;
typedef int ssize_t ;


 int BUFSIZ ;
 int bigendian () ;
 int calc_data_size ;
 int die (char*) ;
 char file_bigendian ;
 int free (char*) ;
 int host_bigendian ;
 int input_fd ;
 char long_size ;
 scalar_t__ memcmp (char*,char*,int) ;
 int page_size ;
 int pevent_print_funcs (struct pevent*) ;
 int pevent_print_printk (struct pevent*) ;
 int printf (char*,char*) ;
 int read4 (struct pevent*) ;
 int read_event_files (struct pevent*) ;
 int read_ftrace_files (struct pevent*) ;
 int read_ftrace_printk (struct pevent*) ;
 int read_header_files (struct pevent*) ;
 int read_or_die (char*,int) ;
 int read_proc_kallsyms (struct pevent*) ;
 char* read_string () ;
 struct pevent* read_trace_init (char,int ) ;
 int repipe ;

ssize_t trace_report(int fd, struct pevent **ppevent, bool __repipe)
{
 char buf[BUFSIZ];
 char test[] = { 23, 8, 68 };
 char *version;
 int show_version = 0;
 int show_funcs = 0;
 int show_printk = 0;
 ssize_t size;

 calc_data_size = 1;
 repipe = __repipe;

 input_fd = fd;

 read_or_die(buf, 3);
 if (memcmp(buf, test, 3) != 0)
  die("no trace data in the file");

 read_or_die(buf, 7);
 if (memcmp(buf, "tracing", 7) != 0)
  die("not a trace file (missing 'tracing' tag)");

 version = read_string();
 if (show_version)
  printf("version = %s\n", version);
 free(version);

 read_or_die(buf, 1);
 file_bigendian = buf[0];
 host_bigendian = bigendian();

 *ppevent = read_trace_init(file_bigendian, host_bigendian);
 if (*ppevent == ((void*)0))
  die("read_trace_init failed");

 read_or_die(buf, 1);
 long_size = buf[0];

 page_size = read4(*ppevent);

 read_header_files(*ppevent);

 read_ftrace_files(*ppevent);
 read_event_files(*ppevent);
 read_proc_kallsyms(*ppevent);
 read_ftrace_printk(*ppevent);

 size = calc_data_size - 1;
 calc_data_size = 0;
 repipe = 0;

 if (show_funcs) {
  pevent_print_funcs(*ppevent);
  return size;
 }
 if (show_printk) {
  pevent_print_printk(*ppevent);
  return size;
 }

 return size;
}
