
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enumname; } ;


 TYPE_1__* defs ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
excluded_rtx (int idx)
{
  return (strcmp (defs[idx].enumname, "CONST_DOUBLE") == 0);
}
