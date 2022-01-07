
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_curve_name (int) ;
 int memcpy (char*,char const*,size_t) ;
 int sprintf (char*,char*,int) ;
 int strlen (char const*) ;

int
get_curve_name_ext(int id, char *dst, size_t len)
{
 const char *name;
 char tmp[30];
 size_t n;

 name = get_curve_name(id);
 if (name == ((void*)0)) {
  sprintf(tmp, "unknown (%d)", id);
  name = tmp;
 }
 n = 1 + strlen(name);
 if (n > len) {
  if (len > 0) {
   dst[0] = 0;
  }
  return -1;
 }
 memcpy(dst, name, n);
 return 0;
}
