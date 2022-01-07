
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

char *
mktmpname(const char *origname, const char *suffix)
{
 char *newname;

 newname = xmalloc(strlen(origname) + strlen(suffix) + 1);
 (void) strcpy(newname, origname);
 (void) strcat(newname, suffix);
 return (newname);
}
