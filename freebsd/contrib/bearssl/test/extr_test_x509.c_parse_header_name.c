
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SB_contents (int ) ;
 size_t SB_length (int ) ;
 int is_name_char (char) ;
 scalar_t__ is_ws (char) ;
 int line_builder ;
 int memcpy (char*,char*,size_t) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
parse_header_name(void)
{
 char *buf, *name;
 size_t u, v, w, len;

 buf = SB_contents(line_builder);
 len = SB_length(line_builder);
 if (len < 2 || buf[0] != '[' || buf[len - 1] != ']') {
  return ((void*)0);
 }
 u = 1;
 v = len - 1;
 while (u < v && is_ws(buf[u])) {
  u ++;
 }
 while (u < v && is_ws(buf[v - 1])) {
  v --;
 }
 if (u == v) {
  return ((void*)0);
 }
 for (w = u; w < v; w ++) {
  if (!is_name_char(buf[w])) {
   return ((void*)0);
  }
 }
 len = v - u;
 name = xmalloc(len + 1);
 memcpy(name, buf + u, len);
 name[len] = 0;
 return name;
}
