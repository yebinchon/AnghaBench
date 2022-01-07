
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_blackbg_theme () ;
 int set_bluetitle_theme () ;
 int set_classic_theme () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int set_theme(const char *theme)
{
 int use_color = 1;
 if (!theme)
  set_bluetitle_theme();
 else if (strcmp(theme, "classic") == 0)
  set_classic_theme();
 else if (strcmp(theme, "bluetitle") == 0)
  set_bluetitle_theme();
 else if (strcmp(theme, "blackbg") == 0)
  set_blackbg_theme();
 else if (strcmp(theme, "mono") == 0)
  use_color = 0;

 return use_color;
}
