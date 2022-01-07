
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char const*,char const*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static void set_ctl_name(char *dst, const char *src, const char *suffix)
{
 if (suffix)
  sprintf(dst, "%s %s", src, suffix);
 else
  strcpy(dst, src);
}
