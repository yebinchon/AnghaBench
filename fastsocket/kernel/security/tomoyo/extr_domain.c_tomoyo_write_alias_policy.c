
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* strchr (char*,char) ;
 int tomoyo_update_alias_entry (char*,char*,int const) ;

int tomoyo_write_alias_policy(char *data, const bool is_delete)
{
 char *cp = strchr(data, ' ');

 if (!cp)
  return -EINVAL;
 *cp++ = '\0';
 return tomoyo_update_alias_entry(data, cp, is_delete);
}
