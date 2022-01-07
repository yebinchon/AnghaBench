
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 char* xmalloc (int) ;

char *join_path(const char *path, const char *name)
{
 int lenp = strlen(path);
 int lenn = strlen(name);
 int len;
 int needslash = 1;
 char *str;

 len = lenp + lenn + 2;
 if ((lenp > 0) && (path[lenp-1] == '/')) {
  needslash = 0;
  len--;
 }

 str = xmalloc(len);
 memcpy(str, path, lenp);
 if (needslash) {
  str[lenp] = '/';
  lenp++;
 }
 memcpy(str+lenp, name, lenn+1);
 return str;
}
