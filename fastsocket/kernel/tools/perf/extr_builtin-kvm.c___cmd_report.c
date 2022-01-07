
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 char** calloc (int,int) ;
 int cmd_report (int,char const**,int *) ;
 char* strdup (char const*) ;

__attribute__((used)) static int __cmd_report(const char *file_name, int argc, const char **argv)
{
 int rec_argc, i = 0, j;
 const char **rec_argv;

 rec_argc = argc + 2;
 rec_argv = calloc(rec_argc + 1, sizeof(char *));
 rec_argv[i++] = strdup("report");
 rec_argv[i++] = strdup("-i");
 rec_argv[i++] = strdup(file_name);
 for (j = 1; j < argc; j++, i++)
  rec_argv[i] = argv[j];

 BUG_ON(i != rec_argc);

 return cmd_report(i, rec_argv, ((void*)0));
}
