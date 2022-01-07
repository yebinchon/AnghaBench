
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct super_block {int dummy; } ;
struct adfs_sb_info {int s_uid; int s_gid; int s_owner_mask; int s_other_mask; } ;


 struct adfs_sb_info* ADFS_SB (struct super_block*) ;
 int EINVAL ;
 int MAX_OPT_ARGS ;




 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int printk (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_options(struct super_block *sb, char *options)
{
 char *p;
 struct adfs_sb_info *asb = ADFS_SB(sb);
 int option;

 if (!options)
  return 0;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 128:
   if (match_int(args, &option))
    return -EINVAL;
   asb->s_uid = option;
   break;
  case 131:
   if (match_int(args, &option))
    return -EINVAL;
   asb->s_gid = option;
   break;
  case 129:
   if (match_octal(args, &option))
    return -EINVAL;
   asb->s_owner_mask = option;
   break;
  case 130:
   if (match_octal(args, &option))
    return -EINVAL;
   asb->s_other_mask = option;
   break;
  default:
   printk("ADFS-fs: unrecognised mount option \"%s\" "
     "or missing value\n", p);
   return -EINVAL;
  }
 }
 return 0;
}
