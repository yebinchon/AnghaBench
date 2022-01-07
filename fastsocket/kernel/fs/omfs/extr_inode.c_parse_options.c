
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct omfs_sb_info {int s_uid; int s_gid; int s_fmask; int s_dmask; } ;


 int MAX_OPT_ARGS ;





 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_options(char *options, struct omfs_sb_info *sbi)
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

  token = match_token(p, tokens, args);
  switch (token) {
  case 129:
   if (match_int(&args[0], &option))
    return 0;
   sbi->s_uid = option;
   break;
  case 130:
   if (match_int(&args[0], &option))
    return 0;
   sbi->s_gid = option;
   break;
  case 128:
   if (match_octal(&args[0], &option))
    return 0;
   sbi->s_fmask = sbi->s_dmask = option;
   break;
  case 132:
   if (match_octal(&args[0], &option))
    return 0;
   sbi->s_dmask = option;
   break;
  case 131:
   if (match_octal(&args[0], &option))
    return 0;
   sbi->s_fmask = option;
   break;
  default:
   return 0;
  }
 }
 return 1;
}
