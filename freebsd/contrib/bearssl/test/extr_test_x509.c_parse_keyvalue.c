
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HT ;


 int * HT_get (int *,char*) ;
 int HT_put (int *,char*,char*) ;
 char* SB_contents (int ) ;
 size_t SB_length (int ) ;
 int is_name_char (char) ;
 scalar_t__ is_ws (char) ;
 int line_builder ;
 int memcpy (char*,char*,size_t) ;
 int xfree (char*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static int
parse_keyvalue(HT *d)
{
 char *buf, *name, *value;
 size_t u, len;

 buf = SB_contents(line_builder);
 len = SB_length(line_builder);
 for (u = 0; u < len; u ++) {
  if (!is_name_char(buf[u])) {
   break;
  }
 }
 if (u == 0) {
  return -1;
 }
 name = xmalloc(u + 1);
 memcpy(name, buf, u);
 name[u] = 0;
 if (HT_get(d, name) != ((void*)0)) {
  xfree(name);
  return -1;
 }
 while (u < len && is_ws(buf[u])) {
  u ++;
 }
 if (u >= len || buf[u] != '=') {
  xfree(name);
  return -1;
 }
 u ++;
 while (u < len && is_ws(buf[u])) {
  u ++;
 }
 value = xmalloc(len - u + 1);
 memcpy(value, buf + u, len - u);
 value[len - u] = 0;
 HT_put(d, name, value);
 xfree(name);
 return 0;
}
