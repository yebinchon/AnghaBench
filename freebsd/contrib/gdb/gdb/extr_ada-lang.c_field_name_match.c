
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_STREQ (char const*,char*) ;
 scalar_t__ DEPRECATED_STREQN (char const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
field_name_match (const char *field_name, const char *target)
{
  int len = strlen (target);
  return
    DEPRECATED_STREQN (field_name, target, len)
    && (field_name[len] == '\0'
 || (DEPRECATED_STREQN (field_name + len, "___", 3)
     && !DEPRECATED_STREQ (field_name + strlen (field_name) - 6, "___XVN")));
}
