
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct exofs_mountopt {int timeout; int pid; } ;
typedef int str ;


 int BLK_DEFAULT_SG_TIMEOUT ;
 int EINVAL ;
 int EXOFS_DBGMSG (char*,char*) ;
 int EXOFS_ERR (char*,...) ;
 int EXOFS_MIN_PID ;
 int HZ ;
 int MAX_OPT_ARGS ;


 int match_int (int *,int*) ;
 int match_strlcpy (char*,int *,int) ;
 int match_token (char*,int ,int *) ;
 int memset (struct exofs_mountopt*,int ,int) ;
 int simple_strtoull (char*,int *,int ) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_options(char *options, struct exofs_mountopt *opts)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;
 bool s_pid = 0;

 EXOFS_DBGMSG("parse_options %s\n", options);

 memset(opts, 0, sizeof(*opts));
 opts->timeout = BLK_DEFAULT_SG_TIMEOUT;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  char str[32];

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 129:
   if (0 == match_strlcpy(str, &args[0], sizeof(str)))
    return -EINVAL;
   opts->pid = simple_strtoull(str, ((void*)0), 0);
   if (opts->pid < EXOFS_MIN_PID) {
    EXOFS_ERR("Partition ID must be >= %u",
       EXOFS_MIN_PID);
    return -EINVAL;
   }
   s_pid = 1;
   break;
  case 128:
   if (match_int(&args[0], &option))
    return -EINVAL;
   if (option <= 0) {
    EXOFS_ERR("Timout must be > 0");
    return -EINVAL;
   }
   opts->timeout = option * HZ;
   break;
  }
 }

 if (!s_pid) {
  EXOFS_ERR("Need to specify the following options:\n");
  EXOFS_ERR("    -o pid=pid_no_to_use\n");
  return -EINVAL;
 }

 return 0;
}
