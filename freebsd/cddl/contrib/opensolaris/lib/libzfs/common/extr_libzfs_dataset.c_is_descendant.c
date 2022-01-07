
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static boolean_t
is_descendant(const char *ds1, const char *ds2)
{
 size_t d1len = strlen(ds1);


 if (strlen(ds2) < d1len)
  return (B_FALSE);


 return (ds2[d1len] == '/' && (strncmp(ds1, ds2, d1len) == 0));
}
