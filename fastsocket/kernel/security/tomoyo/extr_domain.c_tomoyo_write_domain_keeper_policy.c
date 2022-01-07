
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char*,char*) ;
 int tomoyo_update_domain_keeper_entry (char*,char*,int const,int const) ;

int tomoyo_write_domain_keeper_policy(char *data, const bool is_not,
          const bool is_delete)
{
 char *cp = strstr(data, " from ");

 if (cp) {
  *cp = '\0';
  return tomoyo_update_domain_keeper_entry(cp + 6, data, is_not,
        is_delete);
 }
 return tomoyo_update_domain_keeper_entry(data, ((void*)0), is_not, is_delete);
}
