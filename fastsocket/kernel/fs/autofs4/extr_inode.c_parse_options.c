
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int substring_t ;
typedef int pid_t ;
typedef int gid_t ;


 int AUTOFS_MAX_PROTO_VERSION ;
 int AUTOFS_MIN_PROTO_VERSION ;
 int MAX_OPT_ARGS ;
 int current ;
 int current_gid () ;
 int current_uid () ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int set_autofs_type_direct (unsigned int*) ;
 int set_autofs_type_indirect (unsigned int*) ;
 int set_autofs_type_offset (unsigned int*) ;
 char* strsep (char**,char*) ;
 int task_pgrp_nr (int ) ;
 int tokens ;

__attribute__((used)) static int parse_options(char *options, int *pipefd, uid_t *uid, gid_t *gid,
  pid_t *pgrp, unsigned int *type, int *minproto, int *maxproto)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;

 *uid = current_uid();
 *gid = current_gid();
 *pgrp = task_pgrp_nr(current);

 *minproto = AUTOFS_MIN_PROTO_VERSION;
 *maxproto = AUTOFS_MAX_PROTO_VERSION;

 *pipefd = -1;

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 135:
   if (match_int(args, pipefd))
    return 1;
   break;
  case 128:
   if (match_int(args, &option))
    return 1;
   *uid = option;
   break;
  case 134:
   if (match_int(args, &option))
    return 1;
   *gid = option;
   break;
  case 129:
   if (match_int(args, &option))
    return 1;
   *pgrp = option;
   break;
  case 131:
   if (match_int(args, &option))
    return 1;
   *minproto = option;
   break;
  case 132:
   if (match_int(args, &option))
    return 1;
   *maxproto = option;
   break;
  case 133:
   set_autofs_type_indirect(type);
   break;
  case 136:
   set_autofs_type_direct(type);
   break;
  case 130:
   set_autofs_type_offset(type);
   break;
  default:
   return 1;
  }
 }
 return (*pipefd < 0);
}
