
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef unsigned long __u32 ;


 int * memchr (char const*,char,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ strict_strtoul (char*,int ,unsigned long*) ;

__attribute__((used)) static int nfs_map_string_to_numeric(const char *name, size_t namelen, __u32 *res)
{
 unsigned long val;
 char buf[16];

 if (memchr(name, '@', namelen) != ((void*)0) || namelen >= sizeof(buf))
  return 0;
 memcpy(buf, name, namelen);
 buf[namelen] = '\0';
 if (strict_strtoul(buf, 0, &val) != 0)
  return 0;
 *res = val;
 return 1;
}
