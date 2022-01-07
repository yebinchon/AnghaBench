
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_domain_info {int dummy; } ;


 int BUG () ;
 int TOMOYO_MAC_FOR_FILE ;
 int TOMOYO_TYPE_EXECUTE_ACL ;
 int TOMOYO_TYPE_READ_ACL ;
 int TOMOYO_TYPE_READ_WRITE_ACL ;
 int TOMOYO_TYPE_WRITE_ACL ;
 int tomoyo_check_flags (struct tomoyo_domain_info const*,int ) ;
 int tomoyo_check_single_path_acl2 (struct tomoyo_domain_info const*,struct tomoyo_path_info const*,int,int) ;

__attribute__((used)) static int tomoyo_check_file_acl(const struct tomoyo_domain_info *domain,
     const struct tomoyo_path_info *filename,
     const u8 operation)
{
 u16 perm = 0;

 if (!tomoyo_check_flags(domain, TOMOYO_MAC_FOR_FILE))
  return 0;
 if (operation == 6)
  perm = 1 << TOMOYO_TYPE_READ_WRITE_ACL;
 else if (operation == 4)
  perm = 1 << TOMOYO_TYPE_READ_ACL;
 else if (operation == 2)
  perm = 1 << TOMOYO_TYPE_WRITE_ACL;
 else if (operation == 1)
  perm = 1 << TOMOYO_TYPE_EXECUTE_ACL;
 else
  BUG();
 return tomoyo_check_single_path_acl2(domain, filename, perm,
          operation != 1);
}
