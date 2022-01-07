
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static const char *skip_sep(const char *cp)
{
 while (*cp && isspace(*cp))
  cp++;

 return cp;
}
