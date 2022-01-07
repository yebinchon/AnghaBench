
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_suite_name (unsigned int) ;
 int memcpy (char*,char const*,size_t) ;
 int sprintf (char*,char*,unsigned int) ;
 int strlen (char const*) ;

int
get_suite_name_ext(unsigned suite, char *dst, size_t len)
{
 const char *name;
 char tmp[30];
 size_t n;

 name = get_suite_name(suite);
 if (name == ((void*)0)) {
  sprintf(tmp, "unknown (0x%04X)", suite);
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
