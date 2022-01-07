
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*,char const*) ;
 int streq (char const*,char*) ;
 int strlen (char const*) ;
 int strneq (char const*,char const*,int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *nodename_from_path(const char *ppath, const char *cpath)
{
 int plen;

 plen = strlen(ppath);

 if (!strneq(ppath, cpath, plen))
  die("Path \"%s\" is not valid as a child of \"%s\"\n",
      cpath, ppath);


 if (!streq(ppath, "/"))
  plen++;

 return xstrdup(cpath + plen);
}
