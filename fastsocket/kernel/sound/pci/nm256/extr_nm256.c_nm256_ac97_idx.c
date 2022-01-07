
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* nm256_ac97_init_val ;

__attribute__((used)) static int nm256_ac97_idx(unsigned short reg)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(nm256_ac97_init_val); i++)
  if (nm256_ac97_init_val[i].reg == reg)
   return i;
 return -1;
}
