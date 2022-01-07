
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
typedef int uid_t ;
struct TYPE_5__ {char* from; } ;
typedef TYPE_1__ substring_t ;
typedef int gid_t ;


 int CONV_AUTO ;
 int CONV_BINARY ;
 int CONV_TEXT ;
 int MAX_OPT_ARGS ;
 int match_int (TYPE_1__*,int*) ;
 int match_octal (TYPE_1__*,int*) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int simple_strtoul (char*,char**,int ) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_opts(char *opts, uid_t *uid, gid_t *gid, umode_t *umask,
        int *lowercase, int *conv, int *eas, int *chk, int *errs,
        int *chkdsk, int *timeshift)
{
 char *p;
 int option;

 if (!opts)
  return 1;



 while ((p = strsep(&opts, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 131:
   return 2;
  case 129:
   if (match_int(args, &option))
    return 0;
   *uid = option;
   break;
  case 132:
   if (match_int(args, &option))
    return 0;
   *gid = option;
   break;
  case 128:
   if (match_octal(args, &option))
    return 0;
   *umask = option;
   break;
  case 148:
   *lowercase = 1;
   break;
  case 149:
   *lowercase = 0;
   break;
  case 140:
   *conv = CONV_BINARY;
   break;
  case 139:
   *conv = CONV_TEXT;
   break;
  case 141:
   *conv = CONV_AUTO;
   break;
  case 147:
   *chk = 0;
   break;
  case 146:
   *chk = 1;
   break;
  case 145:
   *chk = 2;
   break;
  case 135:
   *errs = 0;
   break;
  case 133:
   *errs = 1;
   break;
  case 134:
   *errs = 2;
   break;
  case 138:
   *eas = 0;
   break;
  case 137:
   *eas = 1;
   break;
  case 136:
   *eas = 2;
   break;
  case 142:
   *chkdsk = 0;
   break;
  case 143:
   *chkdsk = 1;
   break;
  case 144:
   *chkdsk = 2;
   break;
  case 130:
  {
   int m = 1;
   char *rhs = args[0].from;
   if (!rhs || !*rhs)
    return 0;
   if (*rhs == '-') m = -1;
   if (*rhs == '+' || *rhs == '-') rhs++;
   *timeshift = simple_strtoul(rhs, &rhs, 0) * m;
   if (*rhs)
    return 0;
   break;
  }
  default:
   return 0;
  }
 }
 return 1;
}
