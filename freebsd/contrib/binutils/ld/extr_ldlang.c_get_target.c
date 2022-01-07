
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ bfd_target ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
get_target (const bfd_target *target, void *data)
{
  const char *sought = data;

  return strcmp (target->name, sought) == 0;
}
