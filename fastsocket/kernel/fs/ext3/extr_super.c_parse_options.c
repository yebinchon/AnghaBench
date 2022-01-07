
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ from; scalar_t__ to; } ;
typedef TYPE_1__ substring_t ;
struct super_block {int dummy; } ;
struct ext3_sb_info {int s_mount_opt; int s_resuid; int s_resgid; int s_commit_interval; char** s_qf_names; int s_jquota_fmt; } ;
typedef int ext3_fsblk_t ;


 size_t ABORT ;
 size_t BARRIER ;
 size_t CHECK ;
 size_t DATA_ERR_ABORT ;
 size_t DEBUG ;
 size_t ERRORS_CONT ;
 size_t ERRORS_PANIC ;
 size_t ERRORS_RO ;
 int EXT3_MOUNT_DATA_FLAGS ;
 int EXT3_MOUNT_GRPQUOTA ;
 int EXT3_MOUNT_JOURNAL_DATA ;
 int EXT3_MOUNT_ORDERED_DATA ;
 int EXT3_MOUNT_USRQUOTA ;
 int EXT3_MOUNT_WRITEBACK_DATA ;
 struct ext3_sb_info* EXT3_SB (struct super_block*) ;
 size_t GRPID ;
 size_t GRPQUOTA ;
 int HZ ;
 int JBD_DEFAULT_MAX_COMMIT_AGE ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MAX_OPT_ARGS ;
 size_t MINIX_DF ;
 size_t NOBH ;
 size_t NOLOAD ;
 size_t NO_UID32 ;
 size_t OLDALLOC ;
 size_t POSIX_ACL ;
 int QFMT_VFS_OLD ;
 int QFMT_VFS_V0 ;
 int QFMT_VFS_V1 ;
 int QTYPE2NAME (int) ;
 size_t QUOTA ;
 size_t RESERVATION ;
 size_t UPDATE_JOURNAL ;
 size_t USRQUOTA ;
 size_t XATTR_USER ;
 int clear_opt (int,size_t) ;
 int data_mode_string (int) ;
 int ext3_msg (struct super_block*,int ,char*,...) ;
 int kfree (char*) ;
 int match_int (TYPE_1__*,int*) ;
 char* match_strdup (TYPE_1__*) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int sb_any_quota_loaded (struct super_block*) ;
 int set_opt (int,size_t) ;
 int strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_options (char *options, struct super_block *sb,
     unsigned int *inum, unsigned long *journal_devnum,
     ext3_fsblk_t *n_blocks_count, int is_remount)
{
 struct ext3_sb_info *sbi = EXT3_SB(sb);
 char * p;
 substring_t args[MAX_OPT_ARGS];
 int data_opt = 0;
 int option;





 if (!options)
  return 1;

 while ((p = strsep (&options, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;




  args[0].to = args[0].from = 0;
  token = match_token(p, tokens, args);
  switch (token) {
  case 172:
   clear_opt (sbi->s_mount_opt, MINIX_DF);
   break;
  case 151:
   set_opt (sbi->s_mount_opt, MINIX_DF);
   break;
  case 161:
   set_opt (sbi->s_mount_opt, GRPID);
   break;
  case 146:
   clear_opt (sbi->s_mount_opt, GRPID);
   break;
  case 132:
   if (match_int(&args[0], &option))
    return 0;
   sbi->s_resuid = option;
   break;
  case 134:
   if (match_int(&args[0], &option))
    return 0;
   sbi->s_resgid = option;
   break;
  case 131:


   break;
  case 163:
   clear_opt (sbi->s_mount_opt, ERRORS_CONT);
   clear_opt (sbi->s_mount_opt, ERRORS_RO);
   set_opt (sbi->s_mount_opt, ERRORS_PANIC);
   break;
  case 162:
   clear_opt (sbi->s_mount_opt, ERRORS_CONT);
   clear_opt (sbi->s_mount_opt, ERRORS_PANIC);
   set_opt (sbi->s_mount_opt, ERRORS_RO);
   break;
  case 164:
   clear_opt (sbi->s_mount_opt, ERRORS_RO);
   clear_opt (sbi->s_mount_opt, ERRORS_PANIC);
   set_opt (sbi->s_mount_opt, ERRORS_CONT);
   break;
  case 142:
   set_opt (sbi->s_mount_opt, NO_UID32);
   break;
  case 147:
   clear_opt (sbi->s_mount_opt, CHECK);
   break;
  case 165:
   set_opt (sbi->s_mount_opt, DEBUG);
   break;
  case 138:
   set_opt (sbi->s_mount_opt, OLDALLOC);
   break;
  case 137:
   clear_opt (sbi->s_mount_opt, OLDALLOC);
   break;
  case 130:
  case 141:
   ext3_msg(sb, KERN_INFO,
    "(no)user_xattr options not supported");
   break;
  case 175:
  case 150:
   ext3_msg(sb, KERN_INFO,
    "(no)acl options not supported");
   break;

  case 135:
   set_opt(sbi->s_mount_opt, RESERVATION);
   break;
  case 143:
   clear_opt(sbi->s_mount_opt, RESERVATION);
   break;
  case 155:





   if (is_remount) {
    ext3_msg(sb, KERN_ERR, "error: cannot specify "
     "journal on remount");
    return 0;
   }
   set_opt (sbi->s_mount_opt, UPDATE_JOURNAL);
   break;
  case 156:
   if (is_remount) {
    ext3_msg(sb, KERN_ERR, "error: cannot specify "
           "journal on remount");
    return 0;
   }
   if (match_int(&args[0], &option))
    return 0;
   *inum = option;
   break;
  case 157:
   if (is_remount) {
    ext3_msg(sb, KERN_ERR, "error: cannot specify "
           "journal on remount");
    return 0;
   }
   if (match_int(&args[0], &option))
    return 0;
   *journal_devnum = option;
   break;
  case 145:
   set_opt (sbi->s_mount_opt, NOLOAD);
   break;
  case 171:
   if (match_int(&args[0], &option))
    return 0;
   if (option < 0)
    return 0;
   if (option == 0)
    option = JBD_DEFAULT_MAX_COMMIT_AGE;
   sbi->s_commit_interval = HZ * option;
   break;
  case 168:
   data_opt = EXT3_MOUNT_JOURNAL_DATA;
   goto datacheck;
  case 167:
   data_opt = EXT3_MOUNT_ORDERED_DATA;
   goto datacheck;
  case 166:
   data_opt = EXT3_MOUNT_WRITEBACK_DATA;
  datacheck:
   if (is_remount) {
    if ((sbi->s_mount_opt & EXT3_MOUNT_DATA_FLAGS)
      == data_opt)
     break;
    ext3_msg(sb, KERN_ERR,
     "error: cannot change "
     "data mode on remount. The filesystem "
     "is mounted in data=%s mode and you "
     "try to remount it in data=%s mode.",
     data_mode_string(sbi->s_mount_opt &
       EXT3_MOUNT_DATA_FLAGS),
     data_mode_string(data_opt));
    return 0;
   } else {
    sbi->s_mount_opt &= ~EXT3_MOUNT_DATA_FLAGS;
    sbi->s_mount_opt |= data_opt;
   }
   break;
  case 170:
   set_opt(sbi->s_mount_opt, DATA_ERR_ABORT);
   break;
  case 169:
   clear_opt(sbi->s_mount_opt, DATA_ERR_ABORT);
   break;
  case 136:
  case 128:
  case 159:
   ext3_msg(sb, KERN_ERR,
    "error: quota options not supported.");
   break;
  case 129:
  case 160:
  case 139:
  case 140:
  case 154:
  case 153:
  case 152:
   ext3_msg(sb, KERN_ERR,
    "error: journaled quota options not "
    "supported.");
   break;
  case 144:
   break;

  case 176:
   set_opt(sbi->s_mount_opt, ABORT);
   break;
  case 149:
   clear_opt(sbi->s_mount_opt, BARRIER);
   break;
  case 174:
   if (args[0].from) {
    if (match_int(&args[0], &option))
     return 0;
   } else
    option = 1;
   if (option)
    set_opt(sbi->s_mount_opt, BARRIER);
   else
    clear_opt(sbi->s_mount_opt, BARRIER);
   break;
  case 158:
   break;
  case 133:
   if (!is_remount) {
    ext3_msg(sb, KERN_ERR,
     "error: resize option only available "
     "for remount");
    return 0;
   }
   if (match_int(&args[0], &option) != 0)
    return 0;
   *n_blocks_count = option;
   break;
  case 148:
   set_opt(sbi->s_mount_opt, NOBH);
   break;
  case 173:
   clear_opt(sbi->s_mount_opt, NOBH);
   break;
  default:
   ext3_msg(sb, KERN_ERR,
    "error: unrecognized mount option \"%s\" "
    "or missing value", p);
   return 0;
  }
 }
 return 1;
}
