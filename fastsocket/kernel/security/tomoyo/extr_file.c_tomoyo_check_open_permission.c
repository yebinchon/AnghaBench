
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_domain_info {int dummy; } ;
struct path {TYPE_2__* dentry; int mnt; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mode; } ;


 int ACC_MODE (int const) ;
 int ENOMEM ;
 int const MAY_WRITE ;
 int const O_APPEND ;
 int const O_TRUNC ;
 scalar_t__ S_ISDIR (int ) ;
 int TOMOYO_MAC_FOR_FILE ;
 int TOMOYO_TYPE_REWRITE_ACL ;
 int TOMOYO_TYPE_TRUNCATE_ACL ;
 int tomoyo_check_file_perm2 (struct tomoyo_domain_info*,struct tomoyo_path_info*,int const,char*,int const) ;
 int tomoyo_check_flags (struct tomoyo_domain_info*,int ) ;
 int tomoyo_check_single_path_permission2 (struct tomoyo_domain_info*,int ,struct tomoyo_path_info*,int const) ;
 int tomoyo_free (struct tomoyo_path_info*) ;
 struct tomoyo_path_info* tomoyo_get_path (struct path*) ;
 scalar_t__ tomoyo_is_no_rewrite_file (struct tomoyo_path_info*) ;

int tomoyo_check_open_permission(struct tomoyo_domain_info *domain,
     struct path *path, const int flag)
{
 const u8 acc_mode = ACC_MODE(flag);
 int error = -ENOMEM;
 struct tomoyo_path_info *buf;
 const u8 mode = tomoyo_check_flags(domain, TOMOYO_MAC_FOR_FILE);
 const bool is_enforce = (mode == 3);

 if (!mode || !path->mnt)
  return 0;
 if (acc_mode == 0)
  return 0;
 if (path->dentry->d_inode && S_ISDIR(path->dentry->d_inode->i_mode))




  return 0;
 buf = tomoyo_get_path(path);
 if (!buf)
  goto out;
 error = 0;





 if ((acc_mode & MAY_WRITE) &&
     ((flag & O_TRUNC) || !(flag & O_APPEND)) &&
     (tomoyo_is_no_rewrite_file(buf))) {
  error = tomoyo_check_single_path_permission2(domain,
           TOMOYO_TYPE_REWRITE_ACL,
            buf, mode);
 }
 if (!error)
  error = tomoyo_check_file_perm2(domain, buf, acc_mode, "open",
      mode);
 if (!error && (flag & O_TRUNC))
  error = tomoyo_check_single_path_permission2(domain,
           TOMOYO_TYPE_TRUNCATE_ACL,
            buf, mode);
 out:
 tomoyo_free(buf);
 if (!is_enforce)
  error = 0;
 return error;
}
