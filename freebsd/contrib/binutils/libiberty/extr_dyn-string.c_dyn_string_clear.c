
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_3__ {char* s; scalar_t__ length; } ;



void
dyn_string_clear (dyn_string_t ds)
{

  ds->s[0] = '\0';
  ds->length = 0;
}
