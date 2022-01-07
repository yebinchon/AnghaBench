
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tomoyo_update_globally_readable_entry (char*,int const) ;

int tomoyo_write_globally_readable_policy(char *data, const bool is_delete)
{
 return tomoyo_update_globally_readable_entry(data, is_delete);
}
