
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpp_dir {int dummy; } ;
struct TYPE_2__ {size_t len; struct cpp_dir* dir; int name; } ;


 TYPE_1__* frameworks_in_use ;
 int num_frameworks ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

__attribute__((used)) static struct cpp_dir*
find_framework (const char *name, size_t len)
{
  int i;
  for (i = 0; i < num_frameworks; ++i)
    {
      if (len == frameworks_in_use[i].len
   && strncmp (name, frameworks_in_use[i].name, len) == 0)
 {
   return frameworks_in_use[i].dir;
 }
    }
  return 0;
}
