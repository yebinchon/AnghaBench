
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tomoyo_io_buffer {char* write_buf; } ;
struct tomoyo_domain_info {scalar_t__ profile; } ;


 int EINVAL ;
 unsigned long TOMOYO_MAX_PROFILES ;
 int down_read (int *) ;
 char* strchr (char*,char) ;
 scalar_t__ strict_strtoul (char*,int,unsigned long*) ;
 int tomoyo_domain_list_lock ;
 struct tomoyo_domain_info* tomoyo_find_domain (char*) ;
 int tomoyo_policy_loaded ;
 scalar_t__* tomoyo_profile_ptr ;
 int up_read (int *) ;

__attribute__((used)) static int tomoyo_write_domain_profile(struct tomoyo_io_buffer *head)
{
 char *data = head->write_buf;
 char *cp = strchr(data, ' ');
 struct tomoyo_domain_info *domain;
 unsigned long profile;

 if (!cp)
  return -EINVAL;
 *cp = '\0';
 down_read(&tomoyo_domain_list_lock);
 domain = tomoyo_find_domain(cp + 1);
 up_read(&tomoyo_domain_list_lock);
 if (strict_strtoul(data, 10, &profile))
  return -EINVAL;
 if (domain && profile < TOMOYO_MAX_PROFILES
     && (tomoyo_profile_ptr[profile] || !tomoyo_policy_loaded))
  domain->profile = (u8) profile;
 return 0;
}
