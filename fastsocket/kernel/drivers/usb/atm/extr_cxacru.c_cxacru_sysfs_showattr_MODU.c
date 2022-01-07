
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int ssize_t ;


 size_t ARRAY_SIZE (char**) ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t cxacru_sysfs_showattr_MODU(u32 value, char *buf)
{
 static char *str[] = {
   ((void*)0),
   "ANSI T1.413",
   "ITU-T G.992.1 (G.DMT)",
   "ITU-T G.992.2 (G.LITE)"
 };
 if (unlikely(value >= ARRAY_SIZE(str) || str[value] == ((void*)0)))
  return snprintf(buf, PAGE_SIZE, "%u\n", value);
 return snprintf(buf, PAGE_SIZE, "%s\n", str[value]);
}
