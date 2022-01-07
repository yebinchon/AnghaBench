
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCRIPT_FULLPATH_LEN ;
 int SCRIPT_MAX_NO ;
 int SCRIPT_NAMELEN ;
 int find_scripts (char**,char**) ;
 int free (char*) ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 int ui__popup_menu (int,char**) ;

__attribute__((used)) static int list_scripts(char *script_name)
{
 char *buf, *names[SCRIPT_MAX_NO], *paths[SCRIPT_MAX_NO];
 int i, num, choice, ret = -1;


 buf = malloc(SCRIPT_MAX_NO * (SCRIPT_NAMELEN + SCRIPT_FULLPATH_LEN));
 if (!buf)
  return ret;

 for (i = 0; i < SCRIPT_MAX_NO; i++) {
  names[i] = buf + i * (SCRIPT_NAMELEN + SCRIPT_FULLPATH_LEN);
  paths[i] = names[i] + SCRIPT_NAMELEN;
 }

 num = find_scripts(names, paths);
 if (num > 0) {
  choice = ui__popup_menu(num, names);
  if (choice < num && choice >= 0) {
   strcpy(script_name, paths[choice]);
   ret = 0;
  }
 }

 free(buf);
 return ret;
}
