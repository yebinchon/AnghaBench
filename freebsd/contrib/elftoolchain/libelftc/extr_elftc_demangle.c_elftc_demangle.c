
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 char* demangle (char const*,unsigned int,unsigned int) ;
 int errno ;
 int free (char*) ;
 unsigned int is_mangled (char const*,unsigned int) ;
 int strlen (char*) ;
 int strncpy (char*,char*,size_t) ;

int
elftc_demangle(const char *mangledname, char *buffer, size_t bufsize,
    unsigned int flags)
{
 unsigned int style, rc;
 char *rlt;

 style = flags & 0xFFFF;
 rc = flags >> 16;

 if (mangledname == ((void*)0) ||
     ((style = is_mangled(mangledname, style)) == 0)) {
  errno = EINVAL;
  return (-1);
 }

 if ((rlt = demangle(mangledname, style, rc)) == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (buffer == ((void*)0) || bufsize < strlen(rlt) + 1) {
  free(rlt);
  errno = ENAMETOOLONG;
  return (-1);
 }

 strncpy(buffer, rlt, bufsize);
 buffer[bufsize - 1] = '\0';
 free(rlt);

 return (0);
}
