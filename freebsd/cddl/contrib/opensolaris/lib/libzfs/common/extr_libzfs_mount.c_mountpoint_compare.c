
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
mountpoint_compare(const void *a, const void *b)
{
 const char *mounta = *((char **)a);
 const char *mountb = *((char **)b);

 return (strcmp(mountb, mounta));
}
