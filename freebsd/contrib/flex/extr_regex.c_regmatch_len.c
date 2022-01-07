
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;



int regmatch_len (regmatch_t * m)
{
 if (m == ((void*)0) || m->rm_so < 0) {
  return 0;
 }

 return m->rm_eo - m->rm_so;
}
