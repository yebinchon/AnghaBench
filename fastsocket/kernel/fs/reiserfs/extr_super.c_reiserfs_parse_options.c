
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {unsigned long s_blocksize_bits; TYPE_2__* s_bdev; } ;
struct TYPE_8__ {char* member_0; char arg_required; int clrmask; int setmask; char* option_name; int * values; } ;
typedef TYPE_3__ opt_desc_t ;
struct TYPE_9__ {char** s_qf_names; unsigned int s_jquota_fmt; } ;
struct TYPE_7__ {TYPE_1__* bd_inode; } ;
struct TYPE_6__ {unsigned long i_size; } ;


 int GFP_KERNEL ;
 size_t GRPQUOTA ;
 unsigned int QFMT_VFS_OLD ;
 unsigned int QFMT_VFS_V0 ;
 int QTYPE2NAME (int) ;
 int REISERFS_ATTRS ;
 int REISERFS_CONVERT ;
 int REISERFS_EXPOSE_PRIVROOT ;
 int REISERFS_LARGETAIL ;
 int REISERFS_OPT_ALLOWEMPTY ;
 int REISERFS_POSIXACL ;
 int REISERFS_QUOTA ;
 TYPE_5__* REISERFS_SB (struct super_block*) ;
 int REISERFS_SMALLTAIL ;
 int REISERFS_UNSUPPORTED_OPT ;
 int REISERFS_XATTRS_USER ;
 int REPLAYONLY ;
 size_t USRQUOTA ;
 int * balloc ;
 int * barrier_mode ;
 int * error_actions ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int * logging_mode ;
 int reiserfs_getopt (struct super_block*,char**,TYPE_3__*,char**,unsigned long*) ;
 int reiserfs_warning (struct super_block*,char*,char*,...) ;
 scalar_t__ sb_any_quota_loaded (struct super_block*) ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int * tails ;

__attribute__((used)) static int reiserfs_parse_options(struct super_block *s, char *options,
      unsigned long *mount_options,



      unsigned long *blocks,
      char **jdev_name,
      unsigned int *commit_max_age,
      char **qf_names,
      unsigned int *qfmt)
{
 int c;
 char *arg = ((void*)0);
 char *pos;
 opt_desc_t opts[] = {

  {"tails",.arg_required = 't',.values = tails},
  {"notail",.clrmask =
   (1 << REISERFS_LARGETAIL) | (1 << REISERFS_SMALLTAIL)},
  {"conv",.setmask = 1 << REISERFS_CONVERT},
  {"attrs",.setmask = 1 << REISERFS_ATTRS},
  {"noattrs",.clrmask = 1 << REISERFS_ATTRS},
  {"expose_privroot", .setmask = 1 << REISERFS_EXPOSE_PRIVROOT},




  {"user_xattr",.setmask = 1 << REISERFS_UNSUPPORTED_OPT},
  {"nouser_xattr",.clrmask = 1 << REISERFS_UNSUPPORTED_OPT},





  {"acl",.setmask = 1 << REISERFS_UNSUPPORTED_OPT},
  {"noacl",.clrmask = 1 << REISERFS_UNSUPPORTED_OPT},

  {.option_name = "nolog"},
  {"replayonly",.setmask = 1 << REPLAYONLY},
  {"block-allocator",.arg_required = 'a',.values = balloc},
  {"data",.arg_required = 'd',.values = logging_mode},
  {"barrier",.arg_required = 'b',.values = barrier_mode},
  {"resize",.arg_required = 'r',.values = ((void*)0)},
  {"jdev",.arg_required = 'j',.values = ((void*)0)},
  {"nolargeio",.arg_required = 'w',.values = ((void*)0)},
  {"commit",.arg_required = 'c',.values = ((void*)0)},
  {"usrquota",.setmask = 1 << REISERFS_QUOTA},
  {"grpquota",.setmask = 1 << REISERFS_QUOTA},
  {"noquota",.clrmask = 1 << REISERFS_QUOTA},
  {"errors",.arg_required = 'e',.values = error_actions},
  {"usrjquota",.arg_required =
   'u' | (1 << REISERFS_OPT_ALLOWEMPTY),.values = ((void*)0)},
  {"grpjquota",.arg_required =
   'g' | (1 << REISERFS_OPT_ALLOWEMPTY),.values = ((void*)0)},
  {"jqfmt",.arg_required = 'f',.values = ((void*)0)},
  {.option_name = ((void*)0)}
 };

 *blocks = 0;
 if (!options || !*options)


  return 1;

 for (pos = options; pos;) {
  c = reiserfs_getopt(s, &pos, opts, &arg, mount_options);
  if (c == -1)

   return 0;

  if (c == 'r') {
   char *p;

   p = ((void*)0);


   if (!strcmp(arg, "auto")) {

    *blocks =
        s->s_bdev->bd_inode->i_size >> s->
        s_blocksize_bits;
   } else {
    *blocks = simple_strtoul(arg, &p, 0);
    if (*p != '\0') {

     reiserfs_warning(s, "super-6507",
        "bad value %s for "
        "-oresize\n", arg);
     return 0;
    }
   }
  }

  if (c == 'c') {
   char *p = ((void*)0);
   unsigned long val = simple_strtoul(arg, &p, 0);

   if (*p != '\0' || val >= (unsigned int)-1) {
    reiserfs_warning(s, "super-6508",
       "bad value %s for -ocommit\n",
       arg);
    return 0;
   }
   *commit_max_age = (unsigned int)val;
  }

  if (c == 'w') {
   reiserfs_warning(s, "super-6509", "nolargeio option "
      "is no longer supported");
   return 0;
  }

  if (c == 'j') {
   if (arg && *arg && jdev_name) {
    if (*jdev_name) {
     reiserfs_warning(s, "super-6510",
        "journal device was "
        "already specified to "
        "be %s", *jdev_name);
     return 0;
    }
    *jdev_name = arg;
   }
  }
  if (c == 'u' || c == 'g' || c == 'f') {
   reiserfs_warning(s, "reiserfs-2503", "journaled "
      "quota options not supported.");
   return 0;
  }

 }
 return 1;
}
