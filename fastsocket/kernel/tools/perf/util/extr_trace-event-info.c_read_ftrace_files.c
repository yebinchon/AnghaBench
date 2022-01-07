
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_path {int dummy; } ;


 int copy_event_system (char*,struct tracepoint_path*) ;
 char* get_tracing_file (char*) ;
 int put_tracing_file (char*) ;

__attribute__((used)) static void read_ftrace_files(struct tracepoint_path *tps)
{
 char *path;

 path = get_tracing_file("events/ftrace");

 copy_event_system(path, tps);

 put_tracing_file(path);
}
