
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIT_NAME_FULL ;
 int parent_len (char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

int audit_compare_dname_path(const char *dname, const char *path, int parentlen)
{
 int dlen, pathlen;
 const char *p;

 dlen = strlen(dname);
 pathlen = strlen(path);
 if (pathlen < dlen)
  return 1;

 parentlen = parentlen == AUDIT_NAME_FULL ? parent_len(path) : parentlen;
 if (pathlen - parentlen != dlen)
  return 1;

 p = path + parentlen;

 return strncmp(p, dname, dlen);
}
