
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ from; scalar_t__ to; } ;
typedef TYPE_1__ substring_t ;
struct pid_namespace {int pid_gid; int hide_pid; } ;


 int MAX_OPT_ARGS ;


 int match_int (TYPE_1__*,int*) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int pr_err (char*,...) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int proc_parse_options(char *options, struct pid_namespace *pid)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;

  args[0].to = args[0].from = 0;
  token = match_token(p, tokens, args);
  switch (token) {
  case 129:
   if (match_int(&args[0], &option))
    return 0;
   pid->pid_gid = option;
   break;
  case 128:
   if (match_int(&args[0], &option))
    return 0;
   if (option < 0 || option > 2) {
    pr_err("proc: hidepid value must be between 0 and 2.\n");
    return 0;
   }
   pid->hide_pid = option;
   break;
  default:
   pr_err("proc: unrecognized mount option \"%s\" "
          "or missing value\n", p);
   return 0;
  }
 }

 return 1;
}
