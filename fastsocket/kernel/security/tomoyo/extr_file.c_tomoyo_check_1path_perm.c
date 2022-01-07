
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_path_info {scalar_t__ name; int is_dir; } ;
struct tomoyo_domain_info {int dummy; } ;
struct path {int mnt; } ;


 int ENOMEM ;
 int TOMOYO_MAC_FOR_FILE ;


 int strcat (char*,char*) ;
 int tomoyo_check_flags (struct tomoyo_domain_info*,int ) ;
 int tomoyo_check_single_path_permission2 (struct tomoyo_domain_info*,int const,struct tomoyo_path_info*,int const) ;
 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;
 int tomoyo_free (struct tomoyo_path_info*) ;
 struct tomoyo_path_info* tomoyo_get_path (struct path*) ;

int tomoyo_check_1path_perm(struct tomoyo_domain_info *domain,
       const u8 operation, struct path *path)
{
 int error = -ENOMEM;
 struct tomoyo_path_info *buf;
 const u8 mode = tomoyo_check_flags(domain, TOMOYO_MAC_FOR_FILE);
 const bool is_enforce = (mode == 3);

 if (!mode || !path->mnt)
  return 0;
 buf = tomoyo_get_path(path);
 if (!buf)
  goto out;
 switch (operation) {
 case 129:
 case 128:
  if (!buf->is_dir) {



   strcat((char *) buf->name, "/");
   tomoyo_fill_path_info(buf);
  }
 }
 error = tomoyo_check_single_path_permission2(domain, operation, buf,
           mode);
 out:
 tomoyo_free(buf);
 if (!is_enforce)
  error = 0;
 return error;
}
