
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

int parent_len(const char *path)
{
 int plen;
 const char *p;

 plen = strlen(path);

 if (plen == 0)
  return plen;


 p = path + plen - 1;
 while ((*p == '/') && (p > path))
  p--;


 while ((*p != '/') && (p > path))
  p--;


 if (*p == '/')
  p++;

 return p - path;
}
