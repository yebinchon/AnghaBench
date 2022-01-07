
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {char* option_name; int clrmask; int setmask; int arg_required; TYPE_2__* values; } ;
typedef TYPE_1__ opt_desc_t ;
struct TYPE_5__ {unsigned long clrmask; unsigned long setmask; scalar_t__ value; } ;
typedef TYPE_2__ arg_desc_t ;


 int REISERFS_OPT_ALLOWEMPTY ;
 int REISERFS_UNSUPPORTED_OPT ;
 scalar_t__ reiserfs_parse_alloc_options (struct super_block*,char*) ;
 int reiserfs_warning (struct super_block*,char*,char*,char*,...) ;
 char* strchr (char*,char) ;
 int strcmp (char*,scalar_t__) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int reiserfs_getopt(struct super_block *s, char **cur, opt_desc_t * opts,
      char **opt_arg, unsigned long *bit_flags)
{
 char *p;






 const opt_desc_t *opt;
 const arg_desc_t *arg;

 p = *cur;


 *cur = strchr(p, ',');
 if (*cur) {
  *(*cur) = '\0';
  (*cur)++;
 }

 if (!strncmp(p, "alloc=", 6)) {



  if (reiserfs_parse_alloc_options(s, p + 6)) {
   return -1;
  } else {
   return 0;
  }
 }


 for (opt = opts; opt->option_name; opt++) {
  if (!strncmp(p, opt->option_name, strlen(opt->option_name))) {
   if (bit_flags) {
    if (opt->clrmask ==
        (1 << REISERFS_UNSUPPORTED_OPT))
     reiserfs_warning(s, "super-6500",
        "%s not supported.\n",
        p);
    else
     *bit_flags &= ~opt->clrmask;
    if (opt->setmask ==
        (1 << REISERFS_UNSUPPORTED_OPT))
     reiserfs_warning(s, "super-6501",
        "%s not supported.\n",
        p);
    else
     *bit_flags |= opt->setmask;
   }
   break;
  }
 }
 if (!opt->option_name) {
  reiserfs_warning(s, "super-6502",
     "unknown mount option \"%s\"", p);
  return -1;
 }

 p += strlen(opt->option_name);
 switch (*p) {
 case '=':
  if (!opt->arg_required) {
   reiserfs_warning(s, "super-6503",
      "the option \"%s\" does not "
      "require an argument\n",
      opt->option_name);
   return -1;
  }
  break;

 case 0:
  if (opt->arg_required) {
   reiserfs_warning(s, "super-6504",
      "the option \"%s\" requires an "
      "argument\n", opt->option_name);
   return -1;
  }
  break;
 default:
  reiserfs_warning(s, "super-6505",
     "head of option \"%s\" is only correct\n",
     opt->option_name);
  return -1;
 }


 p++;

 if (opt->arg_required
     && !(opt->arg_required & (1 << REISERFS_OPT_ALLOWEMPTY))
     && !strlen(p)) {

  reiserfs_warning(s, "super-6506",
     "empty argument for \"%s\"\n",
     opt->option_name);
  return -1;
 }

 if (!opt->values) {

  *opt_arg = p;
  return opt->arg_required & ~(1 << REISERFS_OPT_ALLOWEMPTY);
 }


 for (arg = opt->values; arg->value; arg++) {
  if (!strcmp(p, arg->value)) {
   if (bit_flags) {
    *bit_flags &= ~arg->clrmask;
    *bit_flags |= arg->setmask;
   }
   return opt->arg_required;
  }
 }

 reiserfs_warning(s, "super-6506",
    "bad value \"%s\" for option \"%s\"\n", p,
    opt->option_name);
 return -1;
}
