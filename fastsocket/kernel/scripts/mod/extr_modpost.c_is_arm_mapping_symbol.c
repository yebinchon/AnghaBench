
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char*,char const) ;

__attribute__((used)) static inline int is_arm_mapping_symbol(const char *str)
{
 return str[0] == '$' && strchr("atd", str[1])
        && (str[2] == '\0' || str[2] == '.');
}
