
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAXPATHLEN ;
 int paxwarn (int,char*,char*,char*) ;

__attribute__((used)) static int
fix_path( char *or_name, int *or_len, char *dir_name, int dir_len)
{
 char *src;
 char *dest;
 char *start;
 int len;







 start = or_name;
 src = start + *or_len;
 dest = src + dir_len;
 if (*start == '/') {
  ++start;
  --dest;
 }
 if ((len = dest - or_name) > PAXPATHLEN) {
  paxwarn(1, "File name %s/%s, too long", dir_name, start);
  return(-1);
 }
 *or_len = len;




 while (src >= start)
  *dest-- = *src--;
 src = dir_name + dir_len - 1;




 while (src >= dir_name)
  *dest-- = *src--;

 *(or_name + len) = '\0';
 return(0);
}
