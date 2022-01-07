
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int substring_t ;
typedef int s32 ;
typedef int gid_t ;


 int EINVAL ;
 int MAX_OPT_ARGS ;
 unsigned long SF_IMMUTABLE ;
 unsigned long SF_MUFS ;
 unsigned long SF_PREFIX ;
 unsigned long SF_SETGID ;
 unsigned long SF_SETMODE ;
 unsigned long SF_SETUID ;
 unsigned long SF_VERBOSE ;
 int current_gid () ;
 int current_uid () ;
 int kfree (char*) ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int printk (char*,...) ;
 int strlcpy (char*,char*,int) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int
parse_options(char *options, uid_t *uid, gid_t *gid, int *mode, int *reserved, s32 *root,
  int *blocksize, char **prefix, char *volume, unsigned long *mount_opts)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];



 *uid = current_uid();
 *gid = current_gid();
 *reserved = 2;
 *root = -1;
 *blocksize = -1;
 volume[0] = ':';
 volume[1] = 0;
 *mount_opts = 0;
 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token, n, option;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 139:
   if (match_int(&args[0], &n))
    return -EINVAL;
   if (n != 512 && n != 1024 && n != 2048
       && n != 4096) {
    printk ("AFFS: Invalid blocksize (512, 1024, 2048, 4096 allowed)\n");
    return 0;
   }
   *blocksize = n;
   break;
  case 137:
   if (match_octal(&args[0], &option))
    return 1;
   *mode = option & 0777;
   *mount_opts |= SF_SETMODE;
   break;
  case 136:
   *mount_opts |= SF_MUFS;
   break;
  case 135:

   kfree(*prefix);
   *prefix = match_strdup(&args[0]);
   if (!*prefix)
    return 0;
   *mount_opts |= SF_PREFIX;
   break;
  case 134:
   *mount_opts |= SF_IMMUTABLE;
   break;
  case 133:
   if (match_int(&args[0], reserved))
    return 1;
   break;
  case 132:
   if (match_int(&args[0], root))
    return 1;
   break;
  case 131:
   if (match_int(&args[0], &option))
    return 1;
   *gid = option;
   *mount_opts |= SF_SETGID;
   break;
  case 130:
   if (match_int(&args[0], &option))
    return -EINVAL;
   *uid = option;
   *mount_opts |= SF_SETUID;
   break;
  case 129:
   *mount_opts |= SF_VERBOSE;
   break;
  case 128: {
   char *vol = match_strdup(&args[0]);
   if (!vol)
    return 0;
   strlcpy(volume, vol, 32);
   kfree(vol);
   break;
  }
  case 138:

   break;
  default:
   printk("AFFS: Unrecognized mount option \"%s\" "
     "or missing value\n", p);
   return 0;
  }
 }
 return 1;
}
