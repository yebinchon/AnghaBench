
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;

__attribute__((used)) static int vga16fb_setup(char *options)
{
 char *this_opt;

 if (!options || !*options)
  return 0;

 while ((this_opt = strsep(&options, ",")) != ((void*)0)) {
  if (!*this_opt) continue;
 }
 return 0;
}
