
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ named; } ;
typedef TYPE_2__ section ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
section_entry_eq (const void *p1, const void *p2)
{
  const section *old = p1;
  const char *new = p2;

  return strcmp (old->named.name, new) == 0;
}
