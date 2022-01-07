
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {char* file_name; } ;


 unsigned int ARRAY_SIZE (char**) ;
 int ENOMEM ;
 char* STRDUP_FAIL_EXIT (char*) ;
 char** calloc (unsigned int,int) ;
 int cmd_record (unsigned int,char const**,int *) ;
 char** record_args ;

__attribute__((used)) static int
kvm_events_record(struct perf_kvm_stat *kvm, int argc, const char **argv)
{
 unsigned int rec_argc, i, j;
 const char **rec_argv;

 rec_argc = ARRAY_SIZE(record_args) + argc + 2;
 rec_argv = calloc(rec_argc + 1, sizeof(char *));

 if (rec_argv == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(record_args); i++)
  rec_argv[i] = STRDUP_FAIL_EXIT(record_args[i]);

 rec_argv[i++] = STRDUP_FAIL_EXIT("-o");
 rec_argv[i++] = STRDUP_FAIL_EXIT(kvm->file_name);

 for (j = 1; j < (unsigned int)argc; j++, i++)
  rec_argv[i] = argv[j];

 return cmd_record(i, rec_argv, ((void*)0));
}
