
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PATH_MAX ;
 scalar_t__ lookup_path (char*) ;
 int scnprintf (char*,int,char*,char const* const,char const*) ;

__attribute__((used)) static int lookup_triplets(const char *const *triplets, const char *name)
{
 int i;
 char buf[PATH_MAX];

 for (i = 0; triplets[i] != ((void*)0); i++) {
  scnprintf(buf, sizeof(buf), "%s%s", triplets[i], name);
  if (lookup_path(buf))
   return i;
 }
 return -1;
}
