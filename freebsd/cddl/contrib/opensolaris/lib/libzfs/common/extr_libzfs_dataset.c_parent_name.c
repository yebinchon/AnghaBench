
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,char const*,size_t) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
parent_name(const char *path, char *buf, size_t buflen)
{
 char *slashp;

 (void) strlcpy(buf, path, buflen);

 if ((slashp = strrchr(buf, '/')) == ((void*)0))
  return (-1);
 *slashp = '\0';

 return (0);
}
