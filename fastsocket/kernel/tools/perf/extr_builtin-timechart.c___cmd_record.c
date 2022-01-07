
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const* const*) ;
 int ENOMEM ;
 char** calloc (unsigned int,int) ;
 int cmd_record (unsigned int,char const**,int *) ;
 scalar_t__ is_valid_tracepoint (char*) ;
 char* strdup (char const* const) ;
 int use_old_power_events ;

__attribute__((used)) static int __cmd_record(int argc, const char **argv)
{
 const char * const record_new_args[] = {
  "record", "-a", "-R", "-f", "-c", "1",
  "-e", "power:cpu_frequency",
  "-e", "power:cpu_idle",
  "-e", "sched:sched_wakeup",
  "-e", "sched:sched_switch",
 };
 unsigned int rec_argc, i, j;
 const char **rec_argv;
 const char * const *record_args = record_new_args;
 unsigned int record_elems = ARRAY_SIZE(record_new_args);
 rec_argc = record_elems + argc - 1;
 rec_argv = calloc(rec_argc + 1, sizeof(char *));

 if (rec_argv == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < record_elems; i++)
  rec_argv[i] = strdup(record_args[i]);

 for (j = 1; j < (unsigned int)argc; j++, i++)
  rec_argv[i] = argv[j];

 return cmd_record(i, rec_argv, ((void*)0));
}
