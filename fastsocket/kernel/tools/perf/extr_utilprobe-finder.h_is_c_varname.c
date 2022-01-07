
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char const) ;

__attribute__((used)) static inline int is_c_varname(const char *name)
{

 return isalpha(name[0]) || name[0] == '_';
}
