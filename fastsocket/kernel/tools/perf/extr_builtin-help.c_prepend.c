
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *prepend(const char *prefix, const char *cmd)
{
 size_t pre_len = strlen(prefix);
 size_t cmd_len = strlen(cmd);
 char *p = malloc(pre_len + cmd_len + 1);
 memcpy(p, prefix, pre_len);
 strcpy(p + pre_len, cmd);
 return p;
}
