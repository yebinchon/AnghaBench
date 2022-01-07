
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_domain_info {int dummy; } ;


 int TOMOYO_MAC_FOR_FILE ;
 int tomoyo_check_flags (struct tomoyo_domain_info*,int ) ;
 int tomoyo_check_single_path_acl2 (struct tomoyo_domain_info*,struct tomoyo_path_info const*,int,int) ;

__attribute__((used)) static int tomoyo_check_single_path_acl(struct tomoyo_domain_info *domain,
     const u8 type,
     const struct tomoyo_path_info *filename)
{
 if (!tomoyo_check_flags(domain, TOMOYO_MAC_FOR_FILE))
  return 0;
 return tomoyo_check_single_path_acl2(domain, filename, 1 << type, 1);
}
