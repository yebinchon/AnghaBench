
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char** environ ;
 int errno ;
 scalar_t__ findenv (char const*,int*) ;
 int * strchr (char const*,char) ;

int
unsetenv(const char *name)
{
 char **p;
 int offset;

 if (name == ((void*)0) || *name == '\0' || strchr(name, '=') != ((void*)0)) {
  errno = EINVAL;
  return -1;
 }

 while (findenv(name, &offset)) {
  for (p = &environ[offset];; ++p)
   if (!(*p = *(p + 1)))
    break;
 }
 return 0;
}
