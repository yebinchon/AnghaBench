
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** fb_var_names ;
 int num_atafb_predefined ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int get_video_mode(char *vname)
{
 char ***name_list;
 char **name;
 int i;

 name_list = fb_var_names;
 for (i = 0; i < num_atafb_predefined; i++) {
  name = *name_list++;
  if (!name || !*name)
   break;
  while (*name) {
   if (!strcmp(vname, *name))
    return i + 1;
   name++;
  }
 }
 return 0;
}
