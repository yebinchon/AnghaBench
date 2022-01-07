
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct iso9660_options {char map; int rock; int joliet; int cruft; int hide; int showassoc; unsigned char check; int nocompress; int blocksize; int fmode; int dmode; int uid_set; int gid_set; int gid; int uid; int utf8; int overriderockperm; int session; int sbsector; int * iocharset; } ;


 int ISOFS_INVALID_MODE ;
 int MAX_OPT_ARGS ;
 int match_int (int *,int*) ;
 int * match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_options(char *options, struct iso9660_options *popt)
{
 char *p;
 int option;

 popt->map = 'n';
 popt->rock = 1;
 popt->joliet = 1;
 popt->cruft = 0;
 popt->hide = 0;
 popt->showassoc = 0;
 popt->check = 'u';
 popt->nocompress = 0;
 popt->blocksize = 1024;
 popt->fmode = popt->dmode = ISOFS_INVALID_MODE;
 popt->uid_set = 0;
 popt->gid_set = 0;
 popt->gid = 0;
 popt->uid = 0;
 popt->iocharset = ((void*)0);
 popt->utf8 = 0;
 popt->overriderockperm = 0;
 popt->session=-1;
 popt->sbsector=-1;
 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  substring_t args[MAX_OPT_ARGS];
  unsigned n;

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 135:
   popt->rock = 0;
   break;
  case 136:
   popt->joliet = 0;
   break;
  case 144:
   popt->hide = 1;
   break;
  case 129:
  case 131:
   popt->showassoc = 1;
   break;
  case 147:
   popt->cruft = 1;
   break;
  case 128:
   popt->utf8 = 1;
   break;





  case 141:
   popt->map = 'a';
   break;
  case 139:
   popt->map = 'o';
   break;
  case 140:
   popt->map = 'n';
   break;
  case 132:
   if (match_int(&args[0], &option))
    return 0;
   n = option;
   if (n > 99)
    return 0;
   popt->session = n + 1;
   break;
  case 133:
   if (match_int(&args[0], &option))
    return 0;
   popt->sbsector = option;
   break;
  case 149:
   popt->check = 'r';
   break;
  case 148:
   popt->check = 's';
   break;
  case 143:
   break;
  case 130:
   if (match_int(&args[0], &option))
    return 0;
   popt->uid = option;
   popt->uid_set = 1;
   break;
  case 145:
   if (match_int(&args[0], &option))
    return 0;
   popt->gid = option;
   popt->gid_set = 1;
   break;
  case 138:
   if (match_int(&args[0], &option))
    return 0;
   popt->fmode = option;
   break;
  case 146:
   if (match_int(&args[0], &option))
    return 0;
   popt->dmode = option;
   break;
  case 134:
   popt->overriderockperm = 1;
   break;
  case 150:
   if (match_int(&args[0], &option))
    return 0;
   n = option;
   if (n != 512 && n != 1024 && n != 2048)
    return 0;
   popt->blocksize = n;
   break;
  case 137:
   popt->nocompress = 1;
   break;
  default:
   return 0;
  }
 }
 return 1;
}
