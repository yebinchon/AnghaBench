
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_domain_info {int dummy; } ;
struct TYPE_2__ {int mnt; } ;
struct file {TYPE_1__ f_path; } ;


 int ENOMEM ;
 int TOMOYO_MAC_FOR_FILE ;
 int TOMOYO_TYPE_REWRITE_ACL ;
 int tomoyo_check_flags (struct tomoyo_domain_info*,int ) ;
 int tomoyo_check_single_path_permission2 (struct tomoyo_domain_info*,int ,struct tomoyo_path_info*,int const) ;
 int tomoyo_free (struct tomoyo_path_info*) ;
 struct tomoyo_path_info* tomoyo_get_path (TYPE_1__*) ;
 int tomoyo_is_no_rewrite_file (struct tomoyo_path_info*) ;

int tomoyo_check_rewrite_permission(struct tomoyo_domain_info *domain,
        struct file *filp)
{
 int error = -ENOMEM;
 const u8 mode = tomoyo_check_flags(domain, TOMOYO_MAC_FOR_FILE);
 const bool is_enforce = (mode == 3);
 struct tomoyo_path_info *buf;

 if (!mode || !filp->f_path.mnt)
  return 0;
 buf = tomoyo_get_path(&filp->f_path);
 if (!buf)
  goto out;
 if (!tomoyo_is_no_rewrite_file(buf)) {
  error = 0;
  goto out;
 }
 error = tomoyo_check_single_path_permission2(domain,
           TOMOYO_TYPE_REWRITE_ACL,
           buf, mode);
 out:
 tomoyo_free(buf);
 if (!is_enforce)
  error = 0;
 return error;
}
