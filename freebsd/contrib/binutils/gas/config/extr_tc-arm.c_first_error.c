
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* error; } ;


 TYPE_1__ inst ;

__attribute__((used)) static void
first_error (const char *err)
{
  if (!inst.error)
    inst.error = err;
}
