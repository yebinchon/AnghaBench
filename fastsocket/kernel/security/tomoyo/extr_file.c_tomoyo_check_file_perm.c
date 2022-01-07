
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_path_info {char const* name; } ;
struct tomoyo_domain_info {int dummy; } ;


 int TOMOYO_MAC_FOR_FILE ;
 int tomoyo_check_file_perm2 (struct tomoyo_domain_info*,struct tomoyo_path_info*,int const,char*,int const) ;
 int tomoyo_check_flags (struct tomoyo_domain_info*,int ) ;
 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;

int tomoyo_check_file_perm(struct tomoyo_domain_info *domain,
      const char *filename, const u8 perm)
{
 struct tomoyo_path_info name;
 const u8 mode = tomoyo_check_flags(domain, TOMOYO_MAC_FOR_FILE);

 if (!mode)
  return 0;
 name.name = filename;
 tomoyo_fill_path_info(&name);
 return tomoyo_check_file_perm2(domain, &name, perm, "sysctl", mode);
}
