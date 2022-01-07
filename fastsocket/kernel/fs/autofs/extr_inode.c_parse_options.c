
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int substring_t ;
typedef int pid_t ;
typedef int gid_t ;


 int AUTOFS_PROTO_VERSION ;
 int MAX_OPT_ARGS ;






 int autofs_tokens ;
 int current ;
 int current_gid () ;
 int current_uid () ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int task_pgrp_nr (int ) ;

__attribute__((used)) static int parse_options(char *options, int *pipefd, uid_t *uid, gid_t *gid,
  pid_t *pgrp, int *minproto, int *maxproto)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;

 *uid = current_uid();
 *gid = current_gid();
 *pgrp = task_pgrp_nr(current);

 *minproto = *maxproto = AUTOFS_PROTO_VERSION;

 *pipefd = -1;

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;

  token = match_token(p, autofs_tokens, args);
  switch (token) {
  case 133:
   if (match_int(&args[0], &option))
    return 1;
   *pipefd = option;
   break;
  case 128:
   if (match_int(&args[0], &option))
    return 1;
   *uid = option;
   break;
  case 132:
   if (match_int(&args[0], &option))
    return 1;
   *gid = option;
   break;
  case 129:
   if (match_int(&args[0], &option))
    return 1;
   *pgrp = option;
   break;
  case 130:
   if (match_int(&args[0], &option))
    return 1;
   *minproto = option;
   break;
  case 131:
   if (match_int(&args[0], &option))
    return 1;
   *maxproto = option;
   break;
  default:
   return 1;
  }
 }
 return (*pipefd < 0);
}
