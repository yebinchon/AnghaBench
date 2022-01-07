
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int ERANGE ;
 int MAXPATHLEN ;
 int errno ;
 char* getwd (char*) ;
 scalar_t__ malloc (size_t) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

char *
getcwd (char *buf, size_t len)
{
  char ourbuf[MAXPATHLEN];
  char *result;

  result = getwd (ourbuf);
  if (result) {
    if (strlen (ourbuf) >= len) {
      errno = ERANGE;
      return 0;
    }
    if (!buf) {
       buf = (char*)malloc(len);
       if (!buf) {
           errno = ENOMEM;
    return 0;
       }
    }
    strcpy (buf, ourbuf);
  }
  return buf;
}
