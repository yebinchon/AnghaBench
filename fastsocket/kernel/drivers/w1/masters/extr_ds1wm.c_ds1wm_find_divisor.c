
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freq; int divisor; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* freq ;

__attribute__((used)) static int ds1wm_find_divisor(int gclk)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(freq); i++)
  if (gclk <= freq[i].freq)
   return freq[i].divisor;

 return 0;
}
