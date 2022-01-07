
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncasecmp (char*,char const*,size_t) ;

__attribute__((used)) static int supported_man_viewer(const char *name, size_t len)
{
 return (!strncasecmp("man", name, len) ||
  !strncasecmp("woman", name, len) ||
  !strncasecmp("konqueror", name, len));
}
