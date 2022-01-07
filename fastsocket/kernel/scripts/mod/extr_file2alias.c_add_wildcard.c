
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static inline void add_wildcard(char *str)
{
 int len = strlen(str);

 if (str[len - 1] != '*')
  strcat(str + len, "*");
}
