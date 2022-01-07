
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int namelen; int name; } ;


 int memcmp (char const*,int ,int) ;

__attribute__((used)) static int proc_match(int len, const char *name, struct proc_dir_entry *de)
{
 if (de->namelen != len)
  return 0;
 return !memcmp(name, de->name, len);
}
