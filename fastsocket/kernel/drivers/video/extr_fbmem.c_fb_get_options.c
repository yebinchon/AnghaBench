
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB_MAX ;
 scalar_t__ ofonly ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char** video_options ;

int fb_get_options(char *name, char **option)
{
 char *opt, *options = ((void*)0);
 int opt_len, retval = 0;
 int name_len = strlen(name), i;

 if (name_len && ofonly && strncmp(name, "offb", 4))
  retval = 1;

 if (name_len && !retval) {
  for (i = 0; i < FB_MAX; i++) {
   if (video_options[i] == ((void*)0))
    continue;
   opt_len = strlen(video_options[i]);
   if (!opt_len)
    continue;
   opt = video_options[i];
   if (!strncmp(name, opt, name_len) &&
       opt[name_len] == ':')
    options = opt + name_len + 1;
  }
 }
 if (options && !strncmp(options, "off", 3))
  retval = 1;

 if (option)
  *option = options;

 return retval;
}
