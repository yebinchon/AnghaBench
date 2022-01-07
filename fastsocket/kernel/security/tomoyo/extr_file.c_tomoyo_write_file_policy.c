
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tomoyo_domain_info {int dummy; } ;


 int EINVAL ;
 size_t TOMOYO_MAX_DOUBLE_PATH_OPERATION ;
 size_t TOMOYO_MAX_SINGLE_PATH_OPERATION ;
 int sscanf (char*,char*,unsigned int*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int * tomoyo_dp_keyword ;
 int * tomoyo_sp_keyword ;
 int tomoyo_update_double_path_acl (size_t,char*,char*,struct tomoyo_domain_info*,int const) ;
 int tomoyo_update_file_acl (char*,size_t,struct tomoyo_domain_info*,int const) ;
 int tomoyo_update_single_path_acl (size_t,char*,struct tomoyo_domain_info*,int const) ;

int tomoyo_write_file_policy(char *data, struct tomoyo_domain_info *domain,
        const bool is_delete)
{
 char *filename = strchr(data, ' ');
 char *filename2;
 unsigned int perm;
 u8 type;

 if (!filename)
  return -EINVAL;
 *filename++ = '\0';
 if (sscanf(data, "%u", &perm) == 1)
  return tomoyo_update_file_acl(filename, (u8) perm, domain,
           is_delete);
 if (strncmp(data, "allow_", 6))
  goto out;
 data += 6;
 for (type = 0; type < TOMOYO_MAX_SINGLE_PATH_OPERATION; type++) {
  if (strcmp(data, tomoyo_sp_keyword[type]))
   continue;
  return tomoyo_update_single_path_acl(type, filename,
           domain, is_delete);
 }
 filename2 = strchr(filename, ' ');
 if (!filename2)
  goto out;
 *filename2++ = '\0';
 for (type = 0; type < TOMOYO_MAX_DOUBLE_PATH_OPERATION; type++) {
  if (strcmp(data, tomoyo_dp_keyword[type]))
   continue;
  return tomoyo_update_double_path_acl(type, filename, filename2,
           domain, is_delete);
 }
 out:
 return -EINVAL;
}
