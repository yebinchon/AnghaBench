
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_domain_info {int dummy; } ;


 int TOMOYO_MAC_FOR_FILE ;
 int tomoyo_check_file_perm2 (struct tomoyo_domain_info*,struct tomoyo_path_info const*,int,char*,int const) ;
 int tomoyo_check_flags (struct tomoyo_domain_info*,int ) ;

int tomoyo_check_exec_perm(struct tomoyo_domain_info *domain,
      const struct tomoyo_path_info *filename)
{
 const u8 mode = tomoyo_check_flags(domain, TOMOYO_MAC_FOR_FILE);

 if (!mode)
  return 0;
 return tomoyo_check_file_perm2(domain, filename, 1, "do_execve", mode);
}
