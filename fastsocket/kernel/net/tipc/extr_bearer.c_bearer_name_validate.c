
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bearer_name {int if_name; int media_name; } ;


 int TIPC_MAX_BEARER_NAME ;
 int TIPC_MAX_IF_NAME ;
 int TIPC_MAX_MEDIA_NAME ;
 char* strchr (char*,char) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,int) ;
 int strspn (char*,int ) ;
 int tipc_alphabet ;

__attribute__((used)) static int bearer_name_validate(const char *name,
    struct bearer_name *name_parts)
{
 char name_copy[TIPC_MAX_BEARER_NAME];
 char *media_name;
 char *if_name;
 u32 media_len;
 u32 if_len;



 name_copy[TIPC_MAX_BEARER_NAME - 1] = 0;

 strncpy(name_copy, name, TIPC_MAX_BEARER_NAME);
 if (name_copy[TIPC_MAX_BEARER_NAME - 1] != 0)
  return 0;



 media_name = name_copy;
 if ((if_name = strchr(media_name, ':')) == ((void*)0))
  return 0;
 *(if_name++) = 0;
 media_len = if_name - media_name;
 if_len = strlen(if_name) + 1;



 if ((media_len <= 1) || (media_len > TIPC_MAX_MEDIA_NAME) ||
     (if_len <= 1) || (if_len > TIPC_MAX_IF_NAME) ||
     (strspn(media_name, tipc_alphabet) != (media_len - 1)) ||
     (strspn(if_name, tipc_alphabet) != (if_len - 1)))
  return 0;



 if (name_parts) {
  strcpy(name_parts->media_name, media_name);
  strcpy(name_parts->if_name, if_name);
 }
 return 1;
}
