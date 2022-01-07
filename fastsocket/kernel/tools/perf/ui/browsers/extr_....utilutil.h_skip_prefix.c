
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static inline const char *skip_prefix(const char *str, const char *prefix)
{
 size_t len = strlen(prefix);
 return strncmp(str, prefix, len) ? ((void*)0) : str + len;
}
