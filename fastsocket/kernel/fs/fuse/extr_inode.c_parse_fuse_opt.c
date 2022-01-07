
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct fuse_mount_data {int max_read; int blksize; int fd; int fd_present; int rootmode; int rootmode_present; int user_id; int user_id_present; int group_id; int group_id_present; int flags; } ;


 int FUSE_ALLOW_OTHER ;
 int FUSE_DEFAULT_BLKSIZE ;
 int FUSE_DEFAULT_PERMISSIONS ;
 int MAX_OPT_ARGS ;
 int fuse_valid_type (int) ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int memset (struct fuse_mount_data*,int ,int) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_fuse_opt(char *opt, struct fuse_mount_data *d, int is_bdev)
{
 char *p;
 memset(d, 0, sizeof(struct fuse_mount_data));
 d->max_read = ~0;
 d->blksize = FUSE_DEFAULT_BLKSIZE;

 while ((p = strsep(&opt, ",")) != ((void*)0)) {
  int token;
  int value;
  substring_t args[MAX_OPT_ARGS];
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 132:
   if (match_int(&args[0], &value))
    return 0;
   d->fd = value;
   d->fd_present = 1;
   break;

  case 129:
   if (match_octal(&args[0], &value))
    return 0;
   if (!fuse_valid_type(value))
    return 0;
   d->rootmode = value;
   d->rootmode_present = 1;
   break;

  case 128:
   if (match_int(&args[0], &value))
    return 0;
   d->user_id = value;
   d->user_id_present = 1;
   break;

  case 131:
   if (match_int(&args[0], &value))
    return 0;
   d->group_id = value;
   d->group_id_present = 1;
   break;

  case 133:
   d->flags |= FUSE_DEFAULT_PERMISSIONS;
   break;

  case 135:
   d->flags |= FUSE_ALLOW_OTHER;
   break;

  case 130:
   if (match_int(&args[0], &value))
    return 0;
   d->max_read = value;
   break;

  case 134:
   if (!is_bdev || match_int(&args[0], &value))
    return 0;
   d->blksize = value;
   break;

  default:
   return 0;
  }
 }

 if (!d->fd_present || !d->rootmode_present ||
     !d->user_id_present || !d->group_id_present)
  return 0;

 return 1;
}
