
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_entry {int mode; } ;


 scalar_t__ S_ISDIR (int ) ;

__attribute__((used)) static unsigned int pid_entry_count_dirs(const struct pid_entry *entries,
 unsigned int n)
{
 unsigned int i;
 unsigned int count;

 count = 0;
 for (i = 0; i < n; ++i) {
  if (S_ISDIR(entries[i].mode))
   ++count;
 }

 return count;
}
