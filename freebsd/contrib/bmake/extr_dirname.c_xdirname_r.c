
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MIN (size_t,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static size_t
xdirname_r(const char *path, char *buf, size_t buflen)
{
 const char *endp;
 size_t len;





 if (path == ((void*)0) || *path == '\0') {
  path = ".";
  len = 1;
  goto out;
 }


 endp = path + strlen(path) - 1;
 while (endp != path && *endp == '/')
  endp--;


 while (endp > path && *endp != '/')
  endp--;

 if (endp == path) {
  path = *endp == '/' ? "/" : ".";
  len = 1;
  goto out;
 }

 do
  endp--;
 while (endp > path && *endp == '/');

 len = endp - path + 1;
out:
 if (buf != ((void*)0) && buflen != 0) {
  buflen = MIN(len, buflen - 1);
  if (buf != path)
   memcpy(buf, path, buflen);
  buf[buflen] = '\0';
 }
 return len;
}
