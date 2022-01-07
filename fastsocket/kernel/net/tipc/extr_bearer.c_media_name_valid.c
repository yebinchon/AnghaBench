
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ TIPC_MAX_MEDIA_NAME ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,int ) ;
 int tipc_alphabet ;

__attribute__((used)) static int media_name_valid(const char *name)
{
 u32 len;

 len = strlen(name);
 if ((len + 1) > TIPC_MAX_MEDIA_NAME)
  return 0;
 return (strspn(name, tipc_alphabet) == len);
}
